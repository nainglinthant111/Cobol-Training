       IDENTIFICATION DIVISION.
       PROGRAM-ID. REDEFINE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NumField PIC 9(4) VALUE 1234.
       01 CharField REDEFINES NumField PIC X(4).
       
       PROCEDURE DIVISION.                                                                                
           DISPLAY "Numeric View: " NumField. 
           DISPLAY "Character View: " CharField.

           STOP RUN.
           
