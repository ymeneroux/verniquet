import os
import sys
import numpy as np


# ----------------------------------------------------------------------
# OPTIMAL REFRACTION COEFF. COMPUTATION WITH COMP3D
# ----------------------------------------------------------------------
# Command line:
#     python optim_k.py <fichier.comp> [k_ini] [k_end] [k_step] 
# ----------------------------------------------------------------------
# Comp is executed for all values of k between k_ini (default -5) and 
# k_end (default +5) by step of k_step (default 0.1). The best value 
# of k is selected, based on the minimization of the sigma_0 score. 
# ----------------------------------------------------------------------
# Output: a file with all value of sigma_0 for the set of tested values 
# of k -> output_optim_k.txt
# ----------------------------------------------------------------------
# Replace 'comp_folder' parameter below with Comp3D executable folder
# ----------------------------------------------------------------------


# Set with Comp3D executable folder
comp_folder = "/home/YMeneroux/Bureau/KitYann/Prog/build-comp3d_cpp-Desktop-Release/"


output_file = open("output_optim_k.txt", 'w')

path = sys.argv[1]

val_ini  = -10
val_fin  = +10
val_step = 0.1

if (len(sys.argv) > 2):
    val_ini  = float(sys.argv[2])
    val_fin  = float(sys.argv[3])
    val_step = float(sys.argv[4])

VALUES_OF_K = np.arange(val_ini, val_fin, val_step)

BEST_K = 1
BEST_SIGMA0 = 1e300

for k in VALUES_OF_K:
	
    k = round(k, 6)
	
    output = path.split(".comp")[0]+"_temp.comp"

    f_inp = open(path)
    f_out = open(output, 'w')
    
    for i in f_inp.readlines():
    	line = i
    	if "refraction" in i:
    		line = i.split(":")[0] + " : " + str(k)+",\n"
    	f_out.write(line)
    	
    f_inp.close()
    f_out.close()
    
    a = os.popen((comp_folder+"/Comp3D " + output + "| grep sigma_0 | tail -n 1")).read().split("=")[1][:-1]
    sigma_0 = float(a)
    print(k, sigma_0)
    if (sigma_0 < BEST_SIGMA0):
        BEST_K = k
        BEST_SIGMA0 = sigma_0
    output_file.write(str(k)+","+str(a))

output_file.close()


print("----------------------------------------------")
print("OPTIMAL K SELECTION RESULTS")
print("----------------------------------------------")
print("K       =", BEST_K)
print("SIGMA_0 =", BEST_SIGMA0)
print("----------------------------------------------")
