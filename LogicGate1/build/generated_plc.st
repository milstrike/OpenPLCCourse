PROGRAM LogicGate1
  VAR
    S11 : BOOL := FALSE;
    S12 : BOOL := FALSE;
    MOTOR1 : BOOL;
    S21 : BOOL := FALSE;
    S22 : BOOL := FALSE;
    MOTOR2 : BOOL;
    S31 : BOOL := TRUE;
    MOTOR3 : BOOL;
  END_VAR

  MOTOR1 := S12 AND S11;
  MOTOR2 := S21 OR S22;
  MOTOR3 := NOT(S31);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : LogicGate1;
  END_RESOURCE
END_CONFIGURATION