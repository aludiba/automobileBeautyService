#import "BMGPUImageSwirlFilterq+BmBm.h"
@implementation BMGPUImageSwirlFilterq (BmBm)
+ (BOOL)GinitBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)YSetinputrotationqAtindexBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)qSetradiusBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fSetangleBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)XSetcenterBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
