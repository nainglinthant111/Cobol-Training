       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateIndexed.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CustomerFile ASSIGN TO "customers.dat"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS CustomerID.
       
       DATA DIVISION.
       FILE SECTION.
       FD CustomerFile.
       01 CustomerRecord.
          05 CustomerID    PIC 9(5).
          05 CustomerName  PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-End PIC X VALUE "Y".
       
       PROCEDURE DIVISION.
           OPEN OUTPUT CustomerFile
           PERFORM UNTIL WS-End = "N"
               DISPLAY "Enter Customer ID: " ACCEPT CustomerID
               DISPLAY "Enter Customer Name: " ACCEPT CustomerName
               WRITE CustomerRecord
               DISPLAY "Do you want to add another record (Y/N)? " 
               ACCEPT WS-End
           END-PERFORM
           CLOSE CustomerFile
           STOP RUN.

