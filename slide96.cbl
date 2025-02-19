           identification division.
           program-id. PERFORM-VARYING.
           
           data division.
           working-storage section.
           
           01 Score PIC 99 value 85.

           procedure division.
              EVALUATE TRUE
                   WHEN Score >= 90
                       DISPLAY "Grade: A"
                   WHEN Score >= 80
                       DISPLAY "Grade: B"
                   WHEN OTHER
                       DISPLAY "Grade: C"
               END-EVALUATE.
               stop run.

           