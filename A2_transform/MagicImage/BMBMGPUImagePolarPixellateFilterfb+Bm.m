#import "BMBMGPUImagePolarPixellateFilterfb+Bm.h"
@implementation BMBMGPUImagePolarPixellateFilterfb (Bm)
+ (BOOL)WGinitBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)nVsetinputrotationoatindexBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)tJsetpixelsizeBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)cUsetcenterBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
