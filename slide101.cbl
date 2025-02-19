       IDENTIFICATION DIVISION.
       PROGRAM-ID. GradeCalculator.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       * Variables for processing
       01 StudentCounter    PIC 9 VALUE 1.
       01 MaxStudents       PIC 9 VALUE 5.
       01 StudentScore      PIC 99 VALUE 0.
       01 StudentGrade      PIC X(1).
       
       PROCEDURE DIVISION.
           DISPLAY "Welcome to the Grade Calculator!".
           PERFORM UNTIL StudentCounter > MaxStudents
               DISPLAY "Enter score for Student " StudentCounter ": ".
               ACCEPT StudentScore
               EVALUATE TRUE
                   WHEN StudentScore >= 90 AND StudentScore <= 100
                       MOVE "A" TO StudentGrade
                   WHEN StudentScore >= 80 AND StudentScore <= 89
                       MOVE "B" TO StudentGrade
                   WHEN StudentScore >= 70 AND StudentScore <= 79
                       MOVE "C" TO StudentGrade
                   WHEN StudentScore >= 60 AND StudentScore <= 69
                       MOVE "D" TO StudentGrade
                   WHEN StudentScore < 60
                       MOVE "F" TO StudentGrade
                   WHEN OTHER
                       DISPLAY "Invalid Score!" 
                       NEXT SENTENCE
               END-EVALUATE
       
               DISPLAY "Student " StudentCounter " Grade: " StudentGrade.
               ADD 1 TO StudentCounter
              END-PERFORM.
       
              DISPLAY "Grade calculation completed!".
              STOP RUN.
   