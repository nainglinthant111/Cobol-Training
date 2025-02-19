       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 EmployeeData.
          05 EmployeeName PIC A(30).
          05 EmployeeAge  PIC 9(3).
       
       01 ManagerData.
          05 ManagerName PIC A(30).
          05 ManagerAge  PIC 9(3).

       PROCEDURE DIVISION.
       
           MOVE "John Doe" TO EmployeeName.
           MOVE 35 TO EmployeeAge.
       
           MOVE "Jane Smith" TO ManagerName.
           MOVE 40 TO ManagerAge.
       
           DISPLAY "Employee: " EmployeeName ", Age: " EmployeeAge.
           DISPLAY "Manager: " ManagerName ", Age: " ManagerAge.
       
           STOP RUN.
           
