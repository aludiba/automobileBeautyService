#import "BMBMGPUImageErosionFiltertR+Bm.h"
@implementation BMBMGPUImageErosionFiltertR (Bm)
+ (BOOL)HBinitwithradiusBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)dDinitBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
