       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateSequential.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EmployeeFile ASSIGN TO "employees.dat"
               ORGANIZATION IS SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
       FD EmployeeFile.
       01 EmployeeRecord.
          05 EmployeeID    PIC 9(5).
          05 EmployeeName  PIC X(20).
       WORKING-STORAGE SECTION.
       01 WS-End PIC X VALUE "Y".
    
       PROCEDURE DIVISION.
        OPEN OUTPUT EmployeeFile
        PERFORM UNTIL WS-End = "N"
            DISPLAY "Enter Employee ID: " ACCEPT EmployeeID
            DISPLAY "Enter Employee Name: " ACCEPT EmployeeName
            WRITE EmployeeRecord
            DISPLAY "Do you want to add another record (Y/N)? " 
            ACCEPT WS-End
        END-PERFORM
        CLOSE EmployeeFile
        STOP RUN.
    