#import "GPUImageAdaptiveThresholdFilter+BmBmBm.h"
@implementation GPUImageAdaptiveThresholdFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
