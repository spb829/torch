/* Translated by the Edison Design Group C++/C front end (version 4.8) */
/* Thu Jul 07 09:51:53 2016 */
int __EDGCPFE__4_8;
void *memcpy(); void *memset();
#line 1 "/home/kskyj/sparrow4/util/testcode/c/DOUBLE_LOCK.c"
struct _Complex_long_double; struct _Complex_double; struct _Complex_float;
#line 271 "/usr/include/libio.h"
struct _IO_FILE;
#line 67 "/usr/include/bits/pthreadtypes.h"
struct __pthread_internal_slist;
#line 96
union __T42508224;
#line 78
struct __pthread_mutex_s;
#line 77
union __T42506800; typedef struct _Complex_long_double _Complex_long_double; typedef struct _Complex_double _Complex_double; typedef struct _Complex_float _Complex_float;
#line 211 "/usr/local/lib/gcc/i686-pc-linux-gnu/4.5.3/include/stddef.h"
typedef unsigned size_t;
#line 49 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
#line 67 "/usr/include/bits/pthreadtypes.h"
struct __pthread_internal_slist {

struct __pthread_internal_slist *__next;};
typedef struct __pthread_internal_slist __pthread_slist_t;
#line 96
union __T42508224 {
int __spins;
__pthread_slist_t __list;};
#line 78
struct __pthread_mutex_s {

int __lock;
unsigned __count;
int __owner;
#line 88
int __kind;
#line 94
unsigned __nusers;
union __T42508224 __T42508984;};
#line 77
union __T42506800 {
#line 101
struct __pthread_mutex_s __data;
char __size[24];
long __align;};
typedef union __T42506800 pthread_mutex_t;
#line 249 "/usr/include/stdio.h"
extern FILE *fopen(const char *__filename, const char *__modes);
#line 682 "/usr/include/stdio.h"
extern size_t fread(void *__ptr, size_t __size, size_t __n, FILE *__stream);
#line 736 "/usr/include/pthread.h"
extern int pthread_mutex_lock(pthread_mutex_t *__mutex);
#line 747
extern int pthread_mutex_unlock(pthread_mutex_t *__mutex);
#line 5 "/home/kskyj/sparrow4/util/testcode/c/DOUBLE_LOCK.c"
extern void double_lock();
#line 11
extern int some_error();


extern int some_error2();
#line 5
void double_lock() {
auto pthread_mutex_t __2873_19_mutex = {{0,0U,0,0,0U,{0}}};
auto char __2874_9_error1[10];
auto char __2875_9_error2[20];
auto FILE *__2876_10_fp;
__2876_10_fp = (fopen(((const char *)"filename"), ((const char *)"r")));
if (some_error()) {
pthread_mutex_lock((&__2873_19_mutex));
fread(((void *)(__2874_9_error1)), 1U, 10U, __2876_10_fp);
if (some_error2()) {
pthread_mutex_lock((&__2873_19_mutex));
fread(((void *)(__2875_9_error2)), 1U, 10U, __2876_10_fp);
pthread_mutex_unlock((&__2873_19_mutex));
}
pthread_mutex_unlock((&__2873_19_mutex));
} 
}
