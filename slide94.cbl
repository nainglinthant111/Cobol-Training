           identification division.
           program-id. PERFORM-VARYING.
           
           data division.
           working-storage section.
           
           01 IndexVariable PIC 9 value 1.

           procedure division.
               display "Loop OutPut."
               perform DisplayLoop
                   varying IndexVariable FROM 1 by 1 
                   until IndexVariable > 5
               stop run.
           stop run.
           DisplayLoop.
               display "index = " IndexVariable.

           
            
           