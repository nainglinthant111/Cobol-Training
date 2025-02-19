       IDENTIFICATION DIVISION.
       PROGRAM-ID. SubProgram.

       DATA DIVISION.
       LINKAGE SECTION.
       01 InputValue PIC 9(4).
       01 OutputValue PIC 9(4).
       
       PROCEDURE DIVISION USING InputValue OutputValue.
           COMPUTE OutputValue = InputValue * 10.
           EXIT PROGRAM.

       