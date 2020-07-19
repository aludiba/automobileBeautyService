#import "BMGPUImageSwirlFilterq+BmHbHb.h"
@implementation BMGPUImageSwirlFilterq (BmHbHb)
+ (BOOL)GinitBmHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)YSetinputrotationqAtindexBmHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)qSetradiusBmHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)fSetangleBmHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)XSetcenterBmHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
