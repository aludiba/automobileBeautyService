#import "BMGPUImageSwirlFilterq+Bm.h"
@implementation BMGPUImageSwirlFilterq (Bm)
+ (BOOL)GinitBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)YSetinputrotationqAtindexBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)qSetradiusBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)fSetangleBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)XSetcenterBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
