#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageLocalBinaryPatternFilter.h"
#import "GPUImageLocalBinaryPatternFilter+Bm.h"
#import "GPUImageLocalBinaryPatternFilter+BmBm.h"

@interface GPUImageLocalBinaryPatternFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
