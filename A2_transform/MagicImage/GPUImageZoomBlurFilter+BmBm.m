#import "GPUImageZoomBlurFilter+BmBm.h"
@implementation GPUImageZoomBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setBlurSizeBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setBlurCenterBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
