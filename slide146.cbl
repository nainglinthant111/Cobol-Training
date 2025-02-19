       IDENTIFICATION DIVISION.
       PROGRAM-ID. TableAccessExample.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Employees.
          05 EmployeeName PIC X(10) OCCURS 5 TIMES 
           INDEXED BY EmployeeIndex.
       01 Sub PIC 9(1).
       01 SearchName PIC X(10) VALUE "Alice".
       01 Found PIC X VALUE "N".
       
       PROCEDURE DIVISION.
           MOVE "Alice" TO EmployeeName(1).
           MOVE "Bob" TO EmployeeName(2).
           MOVE "Charlie" TO EmployeeName(3).
           MOVE "Diana" TO EmployeeName(4).
           MOVE "Eve" TO EmployeeName(5).
       
           DISPLAY "Accessing with Subscript:".
           PERFORM VARYING Sub FROM 1 BY 1 UNTIL Sub > 5
               DISPLAY EmployeeName(Sub)
           END-PERFORM.
       
           DISPLAY "Accessing with Index:".
           SET EmployeeIndex TO 1.
           PERFORM UNTIL EmployeeIndex > 5
               DISPLAY EmployeeName(EmployeeIndex)
               SET EmployeeIndex UP BY 1
           END-PERFORM.
       
           DISPLAY "Searching for Alice with Index:".
           SET EmployeeIndex TO 1.
           PERFORM UNTIL EmployeeIndex > 5 OR Found = "Y"
               IF EmployeeName(EmployeeIndex) = SearchName
                  MOVE "Y" TO Found
                  DISPLAY "Name found at index: " EmployeeIndex
               END-IF
               SET EmployeeIndex UP BY 1
           END-PERFORM.
       
           IF Found = "N"
               DISPLAY "Name not found."
           END-IF.
       
           STOP RUN.
