       IDENTIFICATION DIVISION.
       PROGRAM-ID. EMPLOYEE-MANAGEMENT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 EMPLOYEE-RECORD.
           02 EMPLOYEE-ID         PIC 9(5).
           02 EMPLOYEE-NAME.
             03 FIRST-NAME       PIC X(10).
             03 LAST-NAME        PIC X(10).
           66 FULL-NAME RENAMES FIRST-NAME THRU LAST-NAME.
       01 EMPLOYEE-STATUS     PIC X.
             88 ACTIVE           VALUE 'A'.
             88 INACTIVE         VALUE 'I'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "ENTER EMPLOYEE ID: ".
           ACCEPT EMPLOYEE-ID.

           DISPLAY "ENTER FIRST NAME: ".
           ACCEPT FIRST-NAME.

           DISPLAY "ENTER LAST NAME: ".
           ACCEPT LAST-NAME.

           DISPLAY "ENTER EMPLOYEE STATUS (A=ACTIVE, I=INACTIVE): ".
           ACCEPT EMPLOYEE-STATUS.

           DISPLAY "EMPLOYEE DETAILS".
           DISPLAY "-----------------".
           DISPLAY "EMPLOYEE ID      : " EMPLOYEE-ID.
           DISPLAY "FULL NAME        : " FULL-NAME.

           IF ACTIVE THEN
               DISPLAY "STATUS          : ACTIVE"
           ELSE
               DISPLAY "STATUS          : INACTIVE".

           STOP RUN.
