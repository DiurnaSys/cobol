IDENTIFICATION DIVISION.
PROGRAM-ID. FILE2.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
	SELECT PHONE-FILE
		ASSIGN TO 'phone.dat'

		ORGANIZATION IS SEQUENTIAL.
DATA DIVISION.
FILE SECTION.
FD PHONE-FILE
01 PHONE-RECORD.
	05 PHONE-NO	PIC X(6).
	05 PHONE-NAME	PIC X(10).

WORKING-STORAGE SECTION.

88 EOF VALUE IS 'N'.

PRODEDURE DIVISION.

PROGRAM-BEGIN.
	PERFORM UNTIL EOF
	OPEN INPUT PHONE-FILE
	READ PHONE-FILE
	DISPLAY PHONE-NO
	END-PERFORM.

PROGRAM-DONE.
	STOP RUN.
