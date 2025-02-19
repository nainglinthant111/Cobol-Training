       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEARCH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 WS-Table.
         05 WS-Element PIC 9(2) OCCURS 5 TIMES INDEXED BY NameIndex.
         
       PROCEDURE DIVISION.
         MOVE 10 TO WS-Element(1)
         MOVE 20 TO WS-Element(2)
         MOVE 30 TO WS-Element(3)
         MOVE 40 TO WS-Element(4)
         MOVE 50 TO WS-Element(5)

         SET NameIndex TO 1
         SEARCH WS-Element
             WHEN WS-Element(NameIndex) = 30
                 DISPLAY "Found at index: " NameIndex
         END-SEARCH.

           STOP RUN.
