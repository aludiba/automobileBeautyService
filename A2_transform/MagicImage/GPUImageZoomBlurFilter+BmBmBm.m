#import "GPUImageZoomBlurFilter+BmBmBm.h"
@implementation GPUImageZoomBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setBlurSizeBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setBlurCenterBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
