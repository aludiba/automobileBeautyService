#import "BMGPUImageSwirlFilterD+BmHb.h"
@implementation BMGPUImageSwirlFilterD (BmHb)
+ (BOOL)oInitbmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)nSetinputrotationatindexbmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)bSetradiusbmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)XSetanglebmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)gSetcenterbmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
