#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageEmbossFilter.h"
#import "GPUImageEmbossFilter+Bm.h"

@interface GPUImageEmbossFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setIntensityBmBm:(NSInteger)BM;

@end
