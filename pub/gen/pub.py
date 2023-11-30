import os
import sys
import jinja2
import datetime
#import pdfkit
from pyproj import Transformer
from jinja2 import Environment, FileSystemLoader


environment = jinja2.Environment()
template = environment.from_string("Hello, {{ name }}!")
template.render(name="World")


def makeHtmlFile(point):

	environment = Environment(loader=FileSystemLoader("templates/"))
	template = environment.get_template("template.html")
	
	content = template.render(point)
	
	filename =  f"{point['name']}"
	filename_htm = "../out/htm/" + filename + ".html"
	#filename_pdf = "../out/pdf/" + filename + ".pdf"
	with open(filename_htm, mode="w", encoding="utf-8") as message:
		message.write(content)
	#pdfkit.from_file(filename_htm, filename_pdf)
	print(f"... wrote {filename_htm}")

# ------------------------------------------------------------------------
# Readin comp file
# ------------------------------------------------------------------------
input_file_comp = sys.argv[1]

print("------------------------------------------------------------------")
print("INPUT FILE COMP: ..."+input_file_comp[-42:])
print("------------------------------------------------------------------")


PT_NAME = []; PT_X = []; PT_Y = []; PT_Z = []; PT_COM = []
PT_STD_X = []; PT_STD_Y = []; PT_STD_Z = []; 
t2154to4326 = Transformer.from_crs("EPSG:2154", "EPSG:4326")
t4326to4978 = Transformer.from_crs("EPSG:4326", "EPSG:4978")

f = open(input_file_comp, "r")
LINES = f.readlines()
f.close()
for l in LINES:
	l = l.strip()
	for i in range(100):
		l = l.replace('  ', ' ')
	if l.startswith('*'):
		continue
	if "*#" in l:
		PT_COM.append(l.split("*#")[1])
	else:
		PT_COM.append("")
	l = l.split(' ')
	PT_NAME.append(l[0])
	PT_X.append((float)(l[1]))
	PT_Y.append((float)(l[2]))
	PT_Z.append((float)(l[3]))
	PT_STD_X.append((float)(l[4]))
	PT_STD_Y.append((float)(l[5]))
	PT_STD_Z.append((float)(l[6]))
	
N = len(PT_NAME)
date_calcul = datetime.datetime.fromtimestamp(os.path.getmtime(input_file_comp))
print("NUMER OF POINTS IN COMP FILE:", N)
print("COMPUTATION DATE:", date_calcul)
print("------------------------------------------------------------------")


def deg_dms(deg):
	d = (int)(deg)
	m = (int)((deg-d)*60)
	s = '{:.5f}'.format(3600*(deg-d-m/60))
	return [d, m, s]
	
for i in range(N):

	point = {"name": PT_NAME[i], "date_calcul": date_calcul}
	
	point["X_L93"] = '{:.3f}'.format(PT_X[i])
	point["Y_L93"] = '{:.3f}'.format(PT_Y[i])
	point["Z_L93"] = '{:.3f}'.format(PT_Z[i])
	
	pp = t2154to4326.transform(PT_X[i], PT_Y[i]); lon = pp[1]; lat = pp[0]; 
	point["X_GEO"] = '{:.9f}'.format(lon)
	point["Y_GEO"] = '{:.9f}'.format(lat)
	point["Z_GEO"] = '{:.3f}'.format(PT_Z[i])
	
	xdms = deg_dms(lon)
	point["X_GEO_d"] = xdms[0]
	point["X_GEO_m"] = xdms[1]
	point["X_GEO_s"] = xdms[2]

	ydms = deg_dms(lat)
	point["Y_GEO_d"] = ydms[0]
	point["Y_GEO_m"] = ydms[1]
	point["Y_GEO_s"] = ydms[2]
	
	
	pp = t4326to4978.transform(lat, lon, PT_Z[i])
	point["X_ECEF"] = '{:.3f}'.format(pp[0])
	point["Y_ECEF"] = '{:.3f}'.format(pp[1])
	point["Z_ECEF"] = '{:.3f}'.format(pp[2])
	
	
	point["X_STD"] = '{:.4f}'.format(PT_STD_X[i])
	point["Y_STD"] = '{:.4f}'.format(PT_STD_Y[i])
	point["Z_STD"] = '{:.4f}'.format(PT_STD_Z[i])
	
	point["STD_PLANI"] = '{:.1f}'.format(1e3*(PT_STD_X[i]**2 + PT_STD_Y[i]**2)**0.5)
	point["STD_3D"]  = '{:.1f}'.format(1e3*(PT_STD_X[i]**2 + PT_STD_Y[i]**2 + PT_STD_Z[i]**2)**0.5)
    	
	point["com"] = PT_COM[i]

	makeHtmlFile(point)

