       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileStatusExample.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EmployeeFile ASSIGN TO "employees.dat"
               ORGANIZATION IS SEQUENTIAL
               FILE STATUS IS WS-File-Status.

       DATA DIVISION.
       FILE SECTION.
       FD EmployeeFile.
       01 EmployeeRecord.
           05 EmployeeID    PIC 9(5).
           05 EmployeeName  PIC X(20).

       WORKING-STORAGE SECTION.
       01 WS-File-Status PIC XX.
       01 EOF PIC X VALUE "N".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT EmployeeFile
           IF WS-File-Status NOT = "00"
               DISPLAY "Error opening file: Status " WS-File-Status
               STOP RUN
           END-IF

           PERFORM UNTIL EOF = "Y"
               READ EmployeeFile INTO EmployeeRecord
                   AT END MOVE "Y" TO EOF
                   NOT AT END DISPLAY EmployeeID SPACE EmployeeName
           END-PERFORM

           CLOSE EmployeeFile
           DISPLAY "File processing complete."
           STOP RUN.
       END PROGRAM FileStatusExample.

