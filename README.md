# JC2MP-ClientErrorLogger
Catches client-side errors and logs them to a file on the server.

Client errors are saved to ClientErrors.log in the server root folder(Same location as server.log).
Example of the log format below.

```
Day/Month 00:00:00 | Error From "PlayersName (STEAM_0:0:00000000)" in Module "ModuleName":
  client/test.lua:5: attempt to perform arithmetic on a nil value
  Callstack:
    API function: in metamethod __add
    client/test.lua:5: in function <client/test.lua:4>:
  Args (Name | Value):
    args1 | 453
    args2 | 756
    args3 | 345

Day/Month 00:00:01 | Error From "PlayersName (STEAM_0:0:00000000)" in Module "ModuleName":
  client/test.lua:5: attempt to perform arithmetic on a nil value
  Callstack:
    API function: in metamethod __add
    client/test.lua:5: in function <client/test.lua:4>:
  Args (Name | Value):
    args1 | 123
    args2 | 754
    args3 | 967
```
