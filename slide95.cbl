           identification division.
           program-id. PERFORM-VARYING.
           
           data division.
           working-storage section.
           
           01 Age PIC 99 value 20.

           procedure division.
               EVALUATE Age
                   WHEN 18 THRU 25
                       DISPLAY "Young Adult"
                   WHEN OTHER
                       DISPLAY "Other Age Group"
               END-EVALUATE.

               stop run.

           
            
           