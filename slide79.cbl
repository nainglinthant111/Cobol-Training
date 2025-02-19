       IDENTIFICATION DIVISION.
       PROGRAM-ID. NoRenameNeeded.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EmployeeRecord.
          05 EmployeeID   PIC 9(5).
          05 EmployeeName PIC X(30).
          05 EmployeeAge  PIC 9(3).

       01 BasicDetails REDEFINES EmployeeRecord.
          05 EmployeeID_R   PIC 9(5).
          05 EmployeeName_R PIC X(30).

       PROCEDURE DIVISION.
           MOVE "12345John Doe                25" TO EmployeeRecord.

           DISPLAY "Basic Details: " EmployeeID_R " " EmployeeName_R.

           STOP RUN.

           
