@ECHO OFF


REM rtklib\rtklib_2.4.2\bin\rtkplot.exe solution.pos

REM ------------------------------------------------------------------
REM Solution :  4201762.6170    177858.0612   4779299.3503
REM ------------------------------------------------------------------

SET rtklib="C:\Users\adminlocal\Documents\rtklib_2.4.2\bin\rnx2rtkp.exe"


ECHO =============================================
ECHO STATION: IGNF
ECHO =============================================
SET base="ignf"


ECHO ---------------------------------------------
ECHO STATION: IGNF - 30 min STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 08:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:30:00 -te 2023/11/09 09:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 10:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:30:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 11:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:30:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 13:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:30:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 14:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:30:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 16:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:30:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 17:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:30:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 18:00:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 18:30:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: IGNF - 45 min STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 08:45:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:45:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 10:15:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:15:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 11:45:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:45:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 13:15:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:15:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 14:45:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:45:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 16:15:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:15:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 17:45:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:45:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: IGNF - 1H STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 09:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 18:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: IGNF - 1H30 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: IGNF - 2H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos




ECHO ---------------------------------------------
ECHO STATION: IGNF - 3H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: IGNF - 4H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: IGNF - 5H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: IGNF - 6H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos

