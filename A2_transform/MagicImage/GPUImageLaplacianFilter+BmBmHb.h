#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageLaplacianFilter.h"
#import "GPUImageLaplacianFilter+Bm.h"
#import "GPUImageLaplacianFilter+BmBm.h"

@interface GPUImageLaplacianFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
