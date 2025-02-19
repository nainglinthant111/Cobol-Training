       IDENTIFICATION DIVISION.
       PROGRAM-ID. Multiple_Conditions.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FullRecord.
          05 Field1 PIC 9(3).
          05 Field2 PIC X(5).
          05 Field3 PIC 9(4).
          05 Field4 PIC X(6).
        66 MiddleSection RENAMES  Field2 THROUGH Field3.
       
       PROCEDURE DIVISION.
           MOVE "ABCDE1234" TO MiddleSection.
           DISPLAY "Middle Section: " MiddleSection.

           STOP RUN.
          
