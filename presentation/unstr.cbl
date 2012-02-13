IDENTIFICATION DIVISION.
PROGRAM-ID. STRING2.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-DATA-ITEM1        PIC X(20).
01 WS-DATA-ITEM2        PIC X(20). 
01 WS-DATA-ITEM3        PIC X(25). 
01 WS-POINTER           PIC 9(02). 

PROCEDURE DIVISION.

     UN-STRING 'USERID@COMPANY.COM' DELIMITED BY '@' OR '.'   
      INTO  WS-DATA-ITEM1
      WS-DATA-ITEM2 
      WS-DATA-ITEM3 
      END-UNSTRING.
