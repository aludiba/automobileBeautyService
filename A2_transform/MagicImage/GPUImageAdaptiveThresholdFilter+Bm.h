#import "GPUImageFilterGroup.h"
#import "GPUImageAdaptiveThresholdFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageBoxBlurFilter.h"

@interface GPUImageAdaptiveThresholdFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;

@end
