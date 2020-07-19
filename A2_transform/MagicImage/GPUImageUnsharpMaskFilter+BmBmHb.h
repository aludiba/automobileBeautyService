#import "GPUImageFilterGroup.h"
#import "GPUImageUnsharpMaskFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageUnsharpMaskFilter+Bm.h"
#import "GPUImageUnsharpMaskFilter+BmBm.h"

@interface GPUImageUnsharpMaskFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)setIntensityBmBmHb:(NSInteger)hb;

@end
