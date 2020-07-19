#import "GPUImageFilterGroup.h"
#import "GPUImageAdaptiveThresholdFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageAdaptiveThresholdFilter+Bm.h"
#import "GPUImageAdaptiveThresholdFilter+BmBm.h"

@interface GPUImageAdaptiveThresholdFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb;

@end
