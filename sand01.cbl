IDENTIFICATION DIVISION.
PROGRAM-ID. SAND01.
ENVIRONMENT DIVISION.
DATA DIVISION.

WORKING-STORAGE SECTION.
01 THE-COUNT.
	05 CCOUNT PIC 9(2) VALUE 1.
	05 SPC PIC X(2) VALUE SPACES.
	05 MESS PIC X(10) VALUE "MESS".
PROCEDURE DIVISION.

PROGRAM-BEGIN.
	
	PERFORM DISPLAY-HELLO
		VARYING CCOUNT FROM 1 BY 3
		UNTIL CCOUNT > 5.
PROGRAM-DONE.
	STOP RUN.

DISPLAY-HELLO.
	DISPLAY THE-COUNT.

