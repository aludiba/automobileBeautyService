#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageLaplacianFilter.h"
#import "GPUImageLaplacianFilter+Bm.h"
#import "GPUImageLaplacianFilter+BmBm.h"

@interface GPUImageLaplacianFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
