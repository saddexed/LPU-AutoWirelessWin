@echo off

REM If username is supplied
IF [%1] NEQ [] (
  REM If password is supplied
  IF [%2] NEQ [] (
    ECHO Using %1:%2
    SET user=%1
    SET password=%2
  ) ELSE (
    ECHO Password not defined
  )
) ELSE (
  ECHO Username not defined
)
REM Login Request
curl "https://10.10.0.1/24online/servlet/E24onlineHTTPClient" --data-raw "mode=191&username=%user%%%40lpu.com&password=%%pass%%" --insecure -# >> o.html
