           identification division.
           program-id. PERFORM-TILES.
           
           data division.
           working-storage section.
           
           01 Counter PIC 9 value 1.

           procedure division.
               perform 3 times
                   display "Hello ,world! "
               end-perform.

           stop run.
            
           