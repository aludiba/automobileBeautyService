#import "GPUImageFilterGroup.h"
#import "GPUImageTiltShiftFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageTiltShiftFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setTopFocusLevelBm:(NSInteger)BM;
+ (BOOL)setBottomFocusLevelBm:(NSInteger)BM;
+ (BOOL)setFocusFallOffRateBm:(NSInteger)BM;

@end
