       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 InputValue PIC 9(4).
       01 OutputValue PIC 9(4).
       
       PROCEDURE DIVISION.
           DISPLAY "Enter a number: "
           ACCEPT InputValue
           CALL 'SubProgram' USING InputValue OutputValue.
           display "Doubled value: " OutputValue.
           STOP RUN.
