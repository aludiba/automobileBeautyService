#import "GPUImageFilterGroup.h"
#import "GPUImageAdaptiveThresholdFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageAdaptiveThresholdFilter+Bm.h"
#import "GPUImageAdaptiveThresholdFilter+BmBm.h"

@interface GPUImageAdaptiveThresholdFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;

@end
