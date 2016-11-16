@ECHO OFF
SET username=%1
SET password=%2
NET USER %username% %password% /ADD
NET LOCALGROUP hackfest-participant %username% /ADD
MKDIR E:\%username%
NET SHARE %username%=E:\%username% /GRANT:%username%,FULL
