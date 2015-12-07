#ifndef _ASSERT_TO_IDE_H_
#define _ASSERT_TO_IDE_H_

#include "system/debug/sys_debug.h"
//#include "system/debug/sys_debug.h"

void AssertToIDE(char *test, char *message, uint16_t line, char *file);
//void _SYS_ERROR(int linenumber, const char *filename, const char *message);
void _SYS_ERROR_PRINT(SYS_ERROR_LEVEL level, const char* format, ...);

#endif //_ASSERT_TO_IDE_H_
