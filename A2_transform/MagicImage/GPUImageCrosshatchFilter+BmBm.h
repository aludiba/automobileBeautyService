#import "GPUImageFilter.h"
#import "GPUImageCrosshatchFilter.h"
#import "GPUImageCrosshatchFilter+Bm.h"

@interface GPUImageCrosshatchFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setCrossHatchSpacingBmBm:(NSInteger)BM;
+ (BOOL)setLineWidthBmBm:(NSInteger)BM;

@end
