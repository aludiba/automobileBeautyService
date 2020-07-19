#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageMedianFilter.h"
#import "GPUImageMedianFilter+Bm.h"
#import "GPUImageMedianFilter+BmBm.h"

@interface GPUImageMedianFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
