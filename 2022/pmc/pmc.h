#ifndef PMC_H
#define PMC_H

#include <sys/types.h>
#include <sys/syscall.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct
{
  uint64_t hexcode;
  const char *name;
} counter;

#ifdef __cplusplus
extern "C" {
#endif
void setup_pmc(int core, counter *programmables, size_t n_programmables);
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
void zero_pmc(size_t n_programmables);
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
void dump_stats(counter *programmables, size_t n_programmables);
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
void get_stats(uint64_t *ctrs, size_t n_programmables);
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
uint64_t get_stats_single();
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
inline void start_pmc();
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
inline void stop_pmc();
#ifdef __cplusplus
}
#endif


#define VERIFY(x, errmsg)       \
  if(!((x))){             \
    fprintf(stderr, "%s:%d>>\n\t",  \
        __func__, __LINE__);  \
    perror(errmsg);         \
    exit(1);            \
  }



#endif /* PMC_H */