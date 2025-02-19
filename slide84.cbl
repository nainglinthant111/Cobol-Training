       IDENTIFICATION DIVISION.
       PROGRAM-ID. Multiple_Conditions.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Salary PIC 9(5) VALUE 20000.
       01 Bonus PIC 99 VALUE 0.
       
       PROCEDURE DIVISION.
           IF Salary >= 30000 AND Salary <= 50000 THEN
              MOVE 5 TO Bonus
           ELSE
              MOVE 10 TO Bonus
           END-IF.
       
           DISPLAY "Bonus: " Bonus.

           STOP RUN.
