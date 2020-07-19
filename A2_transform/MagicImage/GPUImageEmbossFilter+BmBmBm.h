#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageEmbossFilter.h"
#import "GPUImageEmbossFilter+Bm.h"
#import "GPUImageEmbossFilter+BmBm.h"

@interface GPUImageEmbossFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setIntensityBmBmBm:(NSInteger)BM;

@end
