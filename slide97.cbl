           identification division.
           program-id. PERFORM-VARYING.
           
           data division.
           working-storage section.
           
           01 Score PIC 99 value 85.

           procedure division.
               DISPLAY "Step 1".
               GO TO Next-Step.
               DISPLAY "This will be skipped".
           stop run.
           Next-Step.
               DISPLAY "Step 2".

               

           