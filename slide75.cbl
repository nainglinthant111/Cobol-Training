       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  EmployeeID   PIC 9(5).
       01  ManagerID like EmployeeID.

       PROCEDURE DIVISION.
           MOVE 12345 TO EmployeeID.
           MOVE 67890 TO ManagerID.

           DISPLAY "Employee ID: " EmployeeID.
           DISPLAY "Manager ID: " ManagerID.

           STOP RUN.