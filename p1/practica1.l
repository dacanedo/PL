%{#include <stdlib.h>
#include <stdio.h>
int char_count = 0, word_count = 0, mayus_count = 0, minus_count = 0, num_count = 0, sentence_count;
%}
digit     [0-9]
letter_min    [a-z]
letter_max    [A-Z]
delim     [ \t]
ws        {delim}+
caracter {digit}+|{letter_min}+|{letter_max}+|{ws}+ 
fos \.
%%
{ws} {/*saltamos porque son espacios en blanco o tabuladores*/}
{letter_max}* {mayus_count++;
                char_count++;}
{letter_min}* {minus_count++;
                char_count++;}
{digit}* {num_count++;
                char_count++;}
{fos} {sentence_count++;
                char_count++;}
%%
int main() {
yylex();
printf("Number of minus words: %d\n", minus_count);
printf("Number of mayus words: %d\n", mayus_count);
printf("Number of numeric words: %d\n", num_count);
printf("Number of characters: %d\n", char_count);
printf("Number of words: %d\n", minus_count+mayus_count+num_count);
printf("Number of sentences: %d\n", sentence_count);

return 0;
}