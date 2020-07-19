#import "GPUImageZoomBlurFilter+Bm.h"
@implementation GPUImageZoomBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setBlurSizeBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setBlurCenterBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
