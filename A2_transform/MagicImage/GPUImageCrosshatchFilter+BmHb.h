#import "GPUImageFilter.h"
#import "GPUImageCrosshatchFilter.h"
#import "GPUImageCrosshatchFilter+Bm.h"

@interface GPUImageCrosshatchFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setCrossHatchSpacingBmHb:(NSInteger)hb;
+ (BOOL)setLineWidthBmHb:(NSInteger)hb;

@end
