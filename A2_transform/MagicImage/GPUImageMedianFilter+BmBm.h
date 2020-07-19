#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageMedianFilter.h"
#import "GPUImageMedianFilter+Bm.h"

@interface GPUImageMedianFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
