#include <stdarg.h>
#include <sys/appio.h>
#include <stdint.h>

#include "system_config.h"
#include "assert_to_ide.h"

#if defined(USE_ISP_DEBUG) && defined(__MPLAB_DEBUGGER_PIC32MXSK)

void AssertToIDE(char *test, char *message, uint16_t line, char *file)
{
    DBPRINTF("%s :: SYS_ASSERT failed: %s, at line %d in %s\n",message,test,line,file);
    asm("break 1");
}

void _SYS_ERROR(int linenumber, const char *filename, const char *message)
{
    DBPRINTF("SYS_ERROR: %s, at line %d in %s\n",message,linenumber,filename);
    asm("break 1");
}

void _SYS_ERROR_PRINT(SYS_ERROR_LEVEL level, const char* format, ...)
{
    va_list args;
    if( (level) < SYSTEM_CURRENT_ERROR_LEVEL )
    {
        va_start( args, format );
        DBPRINTF("SYS_ERROR_PRINT: Level: %d ",level);
        DBPRINTF(format,args);
        DBPRINTF("\n");
        asm("break");        va_end( args );
    }
}

#endif//defined(USE_ISP_DEBUG) && defined(__MPLAB_DEBUGGER_PIC32MXSK)
