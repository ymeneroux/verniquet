@ECHO OFF

REM @ECHO OFF
REM rtklib\rtklib_2.4.2\bin\rnx2rtkp.exe log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\ignf313z.23o -ts "2023/11/09 08:00:00" -te "2023/11/09 18:45:00" -ti 30 -k test_ignf.conf > solution.pos
REM @ECHO ON
REM tail -n 1 solution.pos
REM 
REM @ECHO OFF
REM rtklib\rtklib_2.4.2\bin\rnx2rtkp.exe log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\vity313z.23o -ts "2023/11/09 08:00:00" -te "2023/11/09 18:45:00" -ti 30 -k test_vity.conf > solution.pos
REM @ECHO ON
REM tail -n 1 solution.pos





rtklib\rtklib_2.4.2\bin\rnx2rtkp.exe log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\vity313z.23o -ts 2023/11/09 08:00:00 -te 2023/11/09 09:00:00 -ti 5 -k test_vity.conf > solution.pos
tail -n 1 solution.pos

rtklib\rtklib_2.4.2\bin\rnx2rtkp.exe log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\vity313z.23o -ts 2023/11/09 09:00:00 -te 2023/11/09 10:00:00 -ti 5 -k test_vity.conf > solution.pos
tail -n 1 solution.pos

rtklib\rtklib_2.4.2\bin\rnx2rtkp.exe log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\vity313z.23o -ts 2023/11/09 10:00:00 -te 2023/11/09 11:00:00 -ti 5 -k test_vity.conf > solution.pos
tail -n 1 solution.pos

rtklib\rtklib_2.4.2\bin\rnx2rtkp.exe log_gnss_02062023-20-08-04.obs rgp\ignf313z.23n rgp\vity313z.23o -ts 2023/11/09 11:00:00 -te 2023/11/09 12:00:00 -ti 5 -k test_vity.conf > solution.pos
tail -n 1 solution.pos


REM rtklib\rtklib_2.4.2\bin\rtkplot.exe solution.pos

