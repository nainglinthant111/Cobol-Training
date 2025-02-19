       IDENTIFICATION DIVISION.
       PROGRAM-ID. RelativeFileExample.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EmployeeFile ASSIGN TO "employee.rel"
           ORGANIZATION IS RELATIVE
           ACCESS MODE IS DYNAMIC
           RELATIVE KEY IS RelativeKey
           FILE STATUS IS FileStatus.

       DATA DIVISION.
       FILE SECTION.
       FD EmployeeFile.
       01 EmployeeRecord.
           05 EmployeeID    PIC 9(4).
           05 EmployeeName  PIC X(20).
           05 EmployeeAge   PIC 99.
       WORKING-STORAGE SECTION.
       01 RelativeKey      PIC 9(4) VALUE ZEROS.
       01 FileStatus       PIC XX VALUE "00".
       01 UserChoice       PIC X VALUE SPACE.
       01 TempID           PIC 9(4).
       01 TempName         PIC X(20).
       01 TempAge          PIC 99.

       PROCEDURE DIVISION.
       MainSection.
           OPEN I-O EmployeeFile
           IF FileStatus = "35"
               DISPLAY "File does not exist. Creating file..."
               OPEN OUTPUT EmployeeFile
               CLOSE EmployeeFile
               OPEN I-O EmployeeFile
           END-IF.

           IF FileStatus NOT = "00"
               DISPLAY "Error opening file. Status: " FileStatus
               STOP RUN
           END-IF.
     
