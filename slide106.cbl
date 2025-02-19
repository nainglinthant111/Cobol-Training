           identification division.
           program-id. INSPECT  .
           
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 MyString PIC X(20) VALUE "COBOL is fun!".
           01 Counter   PIC 9(2).
           
           PROCEDURE DIVISION.
               INSPECT MyString TALLYING Counter FOR ALL "O".
               DISPLAY "Count of 'O': " Counter.
               INSPECT MyString REPLACING ALL " " BY "-".
               DISPLAY "Modified String: " MyString.

               stop run.
       