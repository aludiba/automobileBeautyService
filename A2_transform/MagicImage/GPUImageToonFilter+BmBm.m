#import "GPUImageToonFilter+BmBm.h"
@implementation GPUImageToonFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setThresholdBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setQuantizationLevelsBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
