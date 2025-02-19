           identification division.
           program-id. PERFORM-UNTAIL.
           
           data division.
           working-storage section.
           
           01 Counter PIC 9 value 1.

           procedure division.
               perform  process-A THRU process-B.
           stop run.
           process-A.
               display "process A started".
           process-B.
               display "process B started".
           process-C.
               display "process C started".
           process-D.
               display "process D started".

           
            
           