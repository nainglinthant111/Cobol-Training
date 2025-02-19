           identification division.
           program-id. PERFORM-VARYING.
           
           data division.
           working-storage section.
           
           01 Total PIC 99 value 85.

           procedure division.
              IF Total < 0
                   NEXT SENTENCE
               ELSE
                   DISPLAY "Total is positive".
               DISPLAY "End of process.".

           stop run.
       