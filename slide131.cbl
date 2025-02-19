       identification division.
       
       PROGRAM-ID. TableExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Names.
           05 Name PIC X(10) OCCURS 3 TIMES VALUE SPACES.
       01 SUB PIC 9.

       PROCEDURE DIVISION.
           MOVE "Alice" TO Name(1)
           MOVE "Bob" TO Name(2)
           MOVE "Charlie" TO Name(3)

           DISPLAY "The names are:"
           PERFORM VARYING SUB FROM 1 BY 1 UNTIL SUB > 3
               DISPLAY Name(SUB)
           END-PERFORM

           STOP RUN.
