#import "BMGPUImagePolarPixellateFilterf+Bm.h"
@implementation BMGPUImagePolarPixellateFilterf (Bm)
+ (BOOL)ginitBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)vSetinputrotationOAtindexBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)jSetpixelsizeBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)USetcenterBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
