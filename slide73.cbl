       IDENTIFICATION DIVISION.
       PROGRAM-ID. POWERPOINT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  GroupData.
           05  Field1  PIC 9(3)  VALUE 456.
           05  Field2  PIC X(5)  VALUE "WORLD".

       PROCEDURE DIVISION.
           DISPLAY "Before INITIALIZE: " Field1 ", " Field2.

           INITIALIZE GroupData 
               REPLACING ALPHANUMERIC DATA BY "#" 
               NUMERIC DATA BY 0.

           DISPLAY "After INITIALIZE: " Field1 ", " Field2.

           STOP RUN.

