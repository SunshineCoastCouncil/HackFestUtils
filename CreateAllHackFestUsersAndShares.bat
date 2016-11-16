@ECHO OFF
FOR /f "tokens=1-2 delims=," %%a IN (HackFestUserNameAndPasswordList.csv) DO (
      NET USER %%a %%b /ADD
      MKDIR E:\%%a
      NET SHARE %%a=E:\%%a /GRANT:%%a,FULL
)

