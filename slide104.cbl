           identification division.
           program-id. STRING.
           
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 Name1 PIC X(10) VALUE "John".
           01 Name2 PIC X(10) VALUE "Doe".
           01 FullName PIC X(20).
           
           PROCEDURE DIVISION.
               STRING Name1 DELIMITED BY SPACE
                      " " DELIMITED BY SIZE
                      Name2 DELIMITED BY SPACE
                      INTO FullName
               END-STRING.
               DISPLAY "Full Name: " FullName.
               stop run.
       