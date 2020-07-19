#import "GPUImageLuminanceThresholdFilter+BmBmBm.h"
@implementation GPUImageLuminanceThresholdFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
