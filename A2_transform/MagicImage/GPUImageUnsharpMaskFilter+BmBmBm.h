#import "GPUImageFilterGroup.h"
#import "GPUImageUnsharpMaskFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageUnsharpMaskFilter+Bm.h"
#import "GPUImageUnsharpMaskFilter+BmBm.h"

@interface GPUImageUnsharpMaskFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setIntensityBmBmBm:(NSInteger)BM;

@end
