       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateRelative.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
            SELECT ProductFile ASSIGN TO "products.dat"
                   ORGANIZATION IS RELATIVE
                   ACCESS MODE IS RANDOM
                   RELATIVE KEY IS ProductNumber.
       DATA DIVISION.
       FILE SECTION.
       FD ProductFile.
              01 ProductRecord.
                 05 ProductNumber PIC 9(2).
                 05 ProductName   PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-End PIC X VALUE "Y".
       
         OPEN OUTPUT ProductFile
              PERFORM UNTIL WS-End = "N"
               PERFORM WRITE-RECORD
               DISPLAY "Do you want to add another record (Y/N)? "
               ACCEPT WS-End
              END-PERFORM
              CLOSE ProductFile
              STOP RUN.
       
              WRITE-RECORD.
               DISPLAY "Enter Product Number: " ACCEPT ProductNumber
               DISPLAY "Enter Product Name: " ACCEPT ProductName
               WRITE ProductRecord INVALID KEY
               DISPLAY "Duplicate Product Number!".


       stop run.
       