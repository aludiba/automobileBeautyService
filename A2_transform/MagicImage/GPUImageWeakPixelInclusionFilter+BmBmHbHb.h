#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageWeakPixelInclusionFilter+Bm.h"
#import "GPUImageWeakPixelInclusionFilter+BmBm.h"
#import "GPUImageWeakPixelInclusionFilter+BmBmHb.h"

@interface GPUImageWeakPixelInclusionFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;

@end
