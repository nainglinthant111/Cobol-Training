       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 GroupData.
          05 Field1      PIC 9(3) VALUE 123.
          05 Field2      PIC X(5) VALUE "DATA".
           
       PROCEDURE DIVISION.
           DISPLAY "Before INITIALIZE: " GroupData.
           INITIALIZE GroupData.
           DISPLAY "After INITIALIZE: " GroupData.

           STOP RUN.
