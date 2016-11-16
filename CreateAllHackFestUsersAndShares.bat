@ECHO OFF
NET LOCALGROUP hackfest-participant /ADD
FOR /f "tokens=1-2 delims=," %%a IN (HackFestUserNameAndPasswordList.csv) DO (
      NET USER %%a %%b /ADD
      NET LOCALGROUP hackfest-participant %%a /ADD
      MKDIR E:\%%a
      NET SHARE %%a=E:\%%a /GRANT:%%a,FULL
)

