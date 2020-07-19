#import "GPUImageCrosshatchFilter+BmBm.h"
@implementation GPUImageCrosshatchFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setCrossHatchSpacingBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setLineWidthBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
