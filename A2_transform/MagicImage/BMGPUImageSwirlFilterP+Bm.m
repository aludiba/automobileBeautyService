#import "BMGPUImageSwirlFilterP+Bm.h"
@implementation BMGPUImageSwirlFilterP (Bm)
+ (BOOL)vinitBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)VSetinputrotationxAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sSetradiusBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)HSetangleBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)HSetcenterBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
