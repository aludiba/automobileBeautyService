#import "GPUImageCrosshatchFilter+Bm.h"
@implementation GPUImageCrosshatchFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setCrossHatchSpacingBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setLineWidthBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
