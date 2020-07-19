#import "GPUImageCrosshatchFilter+BmBmBm.h"
@implementation GPUImageCrosshatchFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setCrossHatchSpacingBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setLineWidthBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
