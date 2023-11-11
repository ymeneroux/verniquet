@ECHO OFF


REM rtklib\rtklib_2.4.2\bin\rtkplot.exe solution.pos

REM ------------------------------------------------------------------
REM Solution :  4201762.6170    177858.0612   4779299.3503
REM             657716.370      6860676.055    113.832
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
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos







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














ECHO =============================================
ECHO STATION: PANA
ECHO =============================================
SET base="pana"


ECHO ---------------------------------------------
ECHO STATION: PANA - 30 min STEP
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
ECHO STATION: PANA - 45 min STEP
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
ECHO STATION: PANA - 1H STEP
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
ECHO STATION: PANA - 1H30 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: PANA - 2H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos




ECHO ---------------------------------------------
ECHO STATION: PANA - 3H00 STEP
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
ECHO STATION: PANA - 4H00 STEP
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
ECHO STATION: PANA - 5H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: PANA - 6H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos






























ECHO =============================================
ECHO STATION: VITY
ECHO =============================================
SET base="vity"


ECHO ---------------------------------------------
ECHO STATION: VITY - 30 min STEP
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
ECHO STATION: VITY - 45 min STEP
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
ECHO STATION: VITY - 1H STEP
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
ECHO STATION: VITY - 1H30 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: VITY - 2H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos




ECHO ---------------------------------------------
ECHO STATION: VITY - 3H00 STEP
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
ECHO STATION: VITY - 4H00 STEP
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
ECHO STATION: VITY - 5H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: VITY - 6H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos















ECHO =============================================
ECHO STATION: MLVL
ECHO =============================================
SET base="mlvl"


ECHO ---------------------------------------------
ECHO STATION: MLVL - 30 min STEP
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
ECHO STATION: MLVL - 45 min STEP
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
ECHO STATION: MLVL - 1H STEP
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
ECHO STATION: MLVL - 1H30 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: MLVL - 2H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: MLVL - 3H00 STEP
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
ECHO STATION: MLVL - 4H00 STEP
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
ECHO STATION: MLVL - 5H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: MLVL - 6H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos







ECHO =============================================
ECHO STATION: MELN
ECHO =============================================
SET base="meln"


ECHO ---------------------------------------------
ECHO STATION: MELN - 30 min STEP
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
ECHO STATION: MELN - 45 min STEP
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
ECHO STATION: MELN - 1H STEP
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
ECHO STATION: MELN - 1H30 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 09:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:30:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:30:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 15:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:30:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 18:30:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos



ECHO ---------------------------------------------
ECHO STATION: MELN - 2H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 10:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 15:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 16:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 17:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos




ECHO ---------------------------------------------
ECHO STATION: MELN - 3H00 STEP
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
ECHO STATION: MELN - 4H00 STEP
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
ECHO STATION: MELN - 5H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 13:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 14:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


ECHO ---------------------------------------------
ECHO STATION: MELN - 6H00 STEP
ECHO ---------------------------------------------
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 08:05:00 -te 2023/11/09 14:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 15:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 16:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 17:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 12:00:00 -te 2023/11/09 18:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos
%rtklib% log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\\%base%313z.23o -ts 2023/11/09 13:00:00 -te 2023/11/09 19:00:00 -ti 5 -k test_%base%.conf > solution.pos & tail -n 1 solution.pos


