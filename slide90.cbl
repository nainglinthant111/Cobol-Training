           identification division.
           program-id. PERFORM-UNTAIL.
           
           data division.
           working-storage section.
           
           01 Counter PIC 9 value 1.

           procedure division.
               perform until Counter > 5
                   display "Count : "Counter
                   Add 1 To Counter
               end-perform.

           stop run.
            
           