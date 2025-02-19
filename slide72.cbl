       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  AlphaField    PIC X(10) VALUE "HELLO".
       01  NumField      PIC 9(5)  VALUE 54321.

       PROCEDURE DIVISION.
           DISPLAY "Before INITIALIZE: " AlphaField ", " NumField.

           INITIALIZE AlphaField NumField 
               REPLACING ALPHANUMERIC DATA BY "**********" 
               NUMERIC DATA BY 0.

           DISPLAY "After INITIALIZE: " AlphaField ", " NumField.

           STOP RUN.
