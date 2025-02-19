       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDITION.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-FIRST-NUM     PIC 9(5)V99.
       01 WS-SECOND-NUM    PIC 9(5)V99.
       01 WS-RESULT        PIC 9(7)V99.

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           DISPLAY "Enter first number: ".
           ACCEPT WS-FIRST-NUM.

           DISPLAY "Enter second number: ".
           ACCEPT WS-SECOND-NUM.

           COMPUTE WS-RESULT = WS-FIRST-NUM + WS-SECOND-NUM.

           DISPLAY "The sum is: " WS-RESULT.

           STOP RUN.
