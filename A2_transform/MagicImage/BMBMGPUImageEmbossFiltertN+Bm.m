#import "BMBMGPUImageEmbossFiltertN+Bm.h"
@implementation BMBMGPUImageEmbossFiltertN (Bm)
+ (BOOL)fEinitBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)YUsetintensityBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
