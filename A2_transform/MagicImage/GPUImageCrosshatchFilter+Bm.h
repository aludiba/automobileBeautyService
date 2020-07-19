#import "GPUImageFilter.h"
#import "GPUImageCrosshatchFilter.h"

@interface GPUImageCrosshatchFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setCrossHatchSpacingBm:(NSInteger)BM;
+ (BOOL)setLineWidthBm:(NSInteger)BM;

@end
