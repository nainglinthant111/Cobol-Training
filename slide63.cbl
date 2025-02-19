       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDITION.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PaymentStatus PIC 9 VALUE 1.
          88 PaymentPending VALUE 1.
          88 PaymentComplete VALUE 2.
          88 PaymentFailed VALUE 3.

       PROCEDURE DIVISION.
           IF PaymentPending
               DISPLAY "Payment is pending."
           ELSE IF PaymentComplete
               DISPLAY "Payment is complete."
           ELSE IF PaymentFailed
               DISPLAY "Payment failed."

           STOP RUN.
