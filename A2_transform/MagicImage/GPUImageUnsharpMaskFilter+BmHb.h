#import "GPUImageFilterGroup.h"
#import "GPUImageUnsharpMaskFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageUnsharpMaskFilter+Bm.h"

@interface GPUImageUnsharpMaskFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)setIntensityBmHb:(NSInteger)hb;

@end
