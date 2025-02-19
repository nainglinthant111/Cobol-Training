           identification division.
           program-id. PERFORM-VARYING.
           
           data division.
           working-storage section.
           
           01 Total PIC 99 value 85.

           procedure division.
              IF Total < 0
                   CONTINUE
               ELSE
                   DISPLAY "Total is positive".

           stop run.
               

           