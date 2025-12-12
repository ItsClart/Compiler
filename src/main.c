#include <stdio.h>
#include "MemTrack.h"


int main(int argc, char **argv){

    MemTrack_Context ctx = {0};
    Set_MemTrack_Context(&ctx);
    ctx.config.auto_null_pointers = false;
    ctx.config.memory_failure_abort = false;
    ctx.config.print_error_info = true;

   
    int *memory_leak = t_malloc(sizeof(int) * 10);
    memory_leak[0] = 67;


    int *not_memory_leak = t_malloc(sizeof(int) * 10);
    not_memory_leak[0] = 41;


    t_free(not_memory_leak);


    if(check_memory_leak())
        print_tracking_info();


    free_tracking_info();

    return 0;
}
