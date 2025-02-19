       IDENTIFICATION DIVISION.
       PROGRAM-ID. THENELSE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Discount PIC 99 VALUE 0.
       01 PurchaseAmount PIC 999 VALUE 50.
       
       PROCEDURE DIVISION.
           IF PurchaseAmount > 100 THEN
              MOVE 10 TO Discount
           ELSE
              MOVE 5 TO Discount
           END-IF.
       
           DISPLAY "Discount: " Discount.

           STOP RUN.
          
