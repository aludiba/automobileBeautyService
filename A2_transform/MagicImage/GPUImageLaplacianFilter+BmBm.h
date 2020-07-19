#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageLaplacianFilter.h"
#import "GPUImageLaplacianFilter+Bm.h"

@interface GPUImageLaplacianFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
