digit     [0-9]
letter_min    [a-z]
letter_max    [A-Z]
delim     [ \t]
ws        {delim}+

%%

{ws}    {/*saltamos porque son espacios en blanco o tabuladores*/}