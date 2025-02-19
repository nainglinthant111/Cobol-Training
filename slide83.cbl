       IDENTIFICATION DIVISION.
       PROGRAM-ID. THENELSE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Score PIC 99 VALUE 95.
       
       PROCEDURE DIVISION.
           IF Score >= 90 THEN
              DISPLAY "Grade: A"
           ELSE
              IF Score >= 80 THEN
                 DISPLAY "Grade: B"
              ELSE
                 DISPLAY "Grade: C"
              END-IF
           END-IF.

           STOP RUN.
          
