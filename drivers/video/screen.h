#ifndef SCREEN_H
#define SCREEN_H

#include "common.h"
#include "asm.h"

//prints a single character to the video buffer
void printc(char c);
//Clears the video buffer
void clearscrn();
//prints a string to printc(char c)
void printf(char *c);

#endif // SCREEN_H

