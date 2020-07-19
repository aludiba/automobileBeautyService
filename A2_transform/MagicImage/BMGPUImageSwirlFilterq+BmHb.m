#import "BMGPUImageSwirlFilterq+BmHb.h"
@implementation BMGPUImageSwirlFilterq (BmHb)
+ (BOOL)GinitBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)YSetinputrotationqAtindexBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)qSetradiusBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)fSetangleBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)XSetcenterBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
