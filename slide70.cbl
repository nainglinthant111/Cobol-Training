       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NumField      PIC 9(5) VALUE 12345.
       01 AlphaField    PIC X(10) VALUE "HELLO".
       
       PROCEDURE DIVISION.
           DISPLAY "Before INITIALIZE: " NumField ", " AlphaField.
           INITIALIZE NumField AlphaField.
           DISPLAY "After INITIALIZE: " NumField ", " AlphaField.

           STOP RUN.
