       IDENTIFICATION DIVISION.
       PROGRAM-ID. THENELSE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 25.
       
       PROCEDURE DIVISION.
           IF Age >= 18 THEN
              DISPLAY "Adult"
           ELSE
              DISPLAY "Minor"
           END-IF.
           
           STOP RUN.
          
