#import "GPUImageLuminanceThresholdFilter+BmBm.h"
@implementation GPUImageLuminanceThresholdFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setThresholdBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
