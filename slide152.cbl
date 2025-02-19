       IDENTIFICATION DIVISION.
       PROGRAM-ID. Multiple.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SourceValue PIC 9(4) VALUE 2025.
       01 Dest1 PIC 9(4).
       01 Dest2 PIC 9(4).


       PROCEDURE DIVISION.
       MOVE SourceValue TO Dest1 Dest2.   *> Both Dest1 and Dest2 will contain 2025
       display "Dest1: " Dest1
       display "Dest2: " Dest2

       STOP RUN.
