       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEARCH-ALL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-Sorted-Table.
         05 WS-Sorted-Element PIC 9(2) OCCURS 5 TIMES ASCENDING KEY IS 
           WS-Sorted-Element INDEXED BY SortedIndex.

       PROCEDURE DIVISION.
         MOVE 10 TO WS-Sorted-Element(1)
         MOVE 20 TO WS-Sorted-Element(2)
         MOVE 30 TO WS-Sorted-Element(3)
         MOVE 40 TO WS-Sorted-Element(4)
         MOVE 50 TO WS-Sorted-Element(5)

         SET SortedIndex TO 1
         SEARCH ALL WS-Sorted-Element
             WHEN WS-Sorted-Element(SortedIndex) = 30
                 DISPLAY "Found at index: " SortedIndex
         END-SEARCH.


           STOP RUN.
