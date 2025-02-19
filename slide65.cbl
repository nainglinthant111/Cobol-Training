       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  UserName       PIC X(20).

       PROCEDURE DIVISION.
           DISPLAY "Enter your name: ".
           ACCEPT UserName.
           DISPLAY "Hello, " UserName.

           STOP RUN.
