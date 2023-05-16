cuentas :: Integer -> Integer
cuentas =  (`div` 2) . subtract 8 . (*2) . (+3)
