           identification division.
           program-id. Reference.
           
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 MyString PIC X(20) VALUE "COBOL is powerful!".
           01 SubString PIC X(10).
           
           PROCEDURE DIVISION.
               MOVE MyString(10:5) TO SubString.
               DISPLAY "Extracted Substring: " SubString.
          
               stop run.
       