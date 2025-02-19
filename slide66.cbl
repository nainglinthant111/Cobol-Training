       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CurrentDate PIC 9(8).
       01 CurrentTime PIC 9(6).
       
       PROCEDURE DIVISION.
           ACCEPT CurrentDate FROM DATE.
           ACCEPT CurrentTime FROM TIME.
           DISPLAY "Current Date: " CurrentDate.
           DISPLAY "Current Time: " CurrentTime.

           STOP RUN.
