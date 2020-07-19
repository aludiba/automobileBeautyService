#import "BMBMGPUImageRGBErosionFilterIo+Bm.h"
@implementation BMBMGPUImageRGBErosionFilterIo (Bm)
+ (BOOL)nMinitwithradiusBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)DCinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
