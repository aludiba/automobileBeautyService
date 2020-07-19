#import "GPUImageFilterGroup.h"
#import "GPUImageUnsharpMaskFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageUnsharpMaskFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setIntensityBm:(NSInteger)BM;

@end
