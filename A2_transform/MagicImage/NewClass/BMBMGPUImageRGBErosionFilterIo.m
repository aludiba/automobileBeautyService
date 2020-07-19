#import "BMBMGPUImageRGBErosionFilterIo.h"
@implementation BMBMGPUImageRGBErosionFilterIo
+ (BOOL)nMinitwithradius:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)DCinit:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
