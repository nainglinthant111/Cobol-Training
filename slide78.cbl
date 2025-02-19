       IDENTIFICATION DIVISION.
       PROGRAM-ID. Redefinition.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GroupField.
          05 FieldA PIC 9(2).
          05 FieldB PIC 9(2).
       01 RedefinedField REDEFINES GroupField PIC X(4).
       
       PROCEDURE DIVISION.
           MOVE "5678" TO RedefinedField.
           DISPLAY "Field A: " FieldA.
           DISPLAY "Field B: " FieldB.

           STOP RUN.
           
