       IDENTIFICATION DIVISION.
       PROGRAM-ID. BLANK_WHEN_ZERO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  salary       PIC 9(5) BLANK WHEN ZERO.
       01  total-sales  PIC 9(5) BLANK WHEN ZERO VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Enter your salary: ".
           ACCEPT salary.

           DISPLAY "Your salary: " salary.
           DISPLAY "Your total sales is: " total-sales.

           STOP RUN.
