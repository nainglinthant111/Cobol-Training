       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERCISE.

       data division.
       working-storage section.

       01 EmployeeID         PIC 9(5).
       01 EmployeeName       PIC X(30).
       01 EmployeeAge        PIC 99.
       

       01 EmployeeData.
           05 EmpID           PIC 9(5).
           05 EmpName         PIC X(30).
       
       

       procedure division.
       display "Enter Employee ID (5 digits): ".
       accept EmployeeID.
       display "Enter Employee Name: (30 characters) ".
       accept EmployeeName.
       display "Enter Employee Age: (2 digits) ".
       accept EmployeeAge.

       display "Employee ID: " EmployeeID.
       display "Employee Name: " EmployeeName.
       display "Employee Age: " EmployeeAge.

       if EmployeeAge < 18 then
           display "Employee is minor"
       else
           display "Employee is adult"
       end-if.
       
       display "Employee ID in alphabet: " EmployeeID.
       stop run.

       



       