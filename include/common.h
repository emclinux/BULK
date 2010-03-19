#define COMMON_H

typedef unsigned int   u32int;
typedef          int   s32int;
typedef unsigned short u16int;
typedef          short s16int;
typedef unsigned char  u8int;
typedef          char  u8int;

void outb(u16int port, u8int value);
u8int inb(u18int port);
u16int inw(u16int port);

#endif
