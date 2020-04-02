lexer grammar grammar1; 

options {
    language = Java; 
}

COMMAND_END    : ';';
ID             : (LETTER)( (LETTER) | (DIGIT) )*;

/* Fragments */
fragment LETTER      : 'a'..'z' | 'A'..'Z' | '_';
fragment DIGIT       : '0'..'9';
fragment FLOAT_NUM1  : (DIGIT)+'.'(DIGIT)*;
fragment FLOAT_NUM2  : '.'(DIGIT)+;
fragment FLOAT_NUM3  : (DIGIT)+;

/* Variable Type  */

INT_TYPE       : 'int'; 
CHAR_TYPE      : 'char'; 
FLOAT_TYPE     : 'float';
DOUBLE_TYPE    : 'double';
LONG_TYPE      : 'long'; 
LONG_LONG_TYPE : 'long long';
STRUCTUR_TYPE  : 'struct';
VOID_TYPE      : 'void'; 
UNION_TYPE     : 'union';

/* Logical */

WHILE_LOOP     : 'while';
FOR_LOOP       : 'for';
DO_ACTION      : 'do';
IF_JUDGE       : 'if'; 
ELSE_IF_JUDGE  : 'else if'; 
ELSE_JUDGE     : 'else';
GOTO_JUMP      : 'goto';

/* Operators */
EQ_OP     : '=='; 
GE_OP     : '>='; 
LE_OP     : '<='; 
GT_OP     : '>'; 
LT_OP     : '<'; 
NE_OP     : '!='; 
PP_OP     : '++'; 
MM_OP     : '--'; 
RSHIFT_OP : '>>'; 
LSHIFT_OP : '<<';

/* Others */
FLOAT_NUM    : FLOAT_NUM1 | FLOAT_NUM2 | FLOAT_NUM3 ;
DEC_NUM      : ( ('0') | ('1'..'9')(DIGIT)* );
/*BIT_NUM      : ( '0' | '1' )*;*/
STRING       : '"'(.)*'"';
EQUAL        : '='; 
MINUS        : '-'; 
ADD          : '+';
MULTIPLY     : '*'; 
DIVISION     : '/';
COMMENT_LESS : '//'(.)*'\n';
COMMENT_MORE : '/*'(.)*'*/';
NEW_LINE     : '\n';
WHITE_SPACE  : ( ' ' | '\r' | '\t' )+;


