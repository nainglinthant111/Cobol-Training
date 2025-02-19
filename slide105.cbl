           identification division.
           program-id. UNSTRING .
           
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 FullName PIC X(20) VALUE "John Doe".
           01 FirstName PIC X(10).
           01 LastName PIC X(10).
           
           PROCEDURE DIVISION.
               UNSTRING FullName
                   DELIMITED BY SPACE
                   INTO FirstName, LastName
               END-UNSTRING.
               DISPLAY "First Name: " FirstName.
               DISPLAY "Last Name: " LastName.

               stop run.
       