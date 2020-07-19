#import "GPUImageFilter.h"
#import "GPUImageCrosshatchFilter.h"

@interface GPUImageCrosshatchFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setCrossHatchSpacingHb:(NSInteger)hb;
+ (BOOL)setLineWidthHb:(NSInteger)hb;

@end
