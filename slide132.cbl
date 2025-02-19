       IDENTIFICATION DIVISION.
       PROGRAM-ID. MultiDimTableExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Scores.
           05 Ws-Class OCCURS 3 TIMES.
               10 Ws-Student PIC 99 OCCURS 4 TIMES VALUE ZERO.
       01 J PIC 9.

       PROCEDURE DIVISION.
           MOVE 85 TO Ws-Class(1, 1)
           MOVE 90 TO Ws-Class(1, 2)
           MOVE 75 TO Ws-Class(2, 1)

           DISPLAY "Scores in Class 1:"
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 4
               DISPLAY "Student " J ": " Ws-Student(1, J)
           END-PERFORM
           STOP RUN.
