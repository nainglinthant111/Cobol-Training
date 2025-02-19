       identification division.
       program-id. Intrinsic.
       
       data division.
       working-storage section.
       01 Result PIC 9(5)V99.

       PROCEDURE DIVISION.
           COMPUTE Result = FUNCTION SQRT(81)
           DISPLAY "Square root of 81: " Result
           STOP RUN.
       
       
      
