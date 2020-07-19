#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageWeakPixelInclusionFilter+Bm.h"
#import "GPUImageWeakPixelInclusionFilter+BmBm.h"

@interface GPUImageWeakPixelInclusionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
