#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageMedianFilter.h"
#import "GPUImageMedianFilter+Bm.h"

@interface GPUImageMedianFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;

@end
