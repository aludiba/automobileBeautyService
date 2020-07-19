#import "GPUImageFilterGroup.h"
#import "GPUImageUnsharpMaskFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageUnsharpMaskFilter+Bm.h"
#import "GPUImageUnsharpMaskFilter+BmBm.h"
#import "GPUImageUnsharpMaskFilter+BmBmBm.h"

@interface GPUImageUnsharpMaskFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)setIntensityBmBmBmHb:(NSInteger)hb;

@end
