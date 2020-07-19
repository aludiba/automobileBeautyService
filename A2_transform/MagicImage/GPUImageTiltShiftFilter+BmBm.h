#import "GPUImageFilterGroup.h"
#import "GPUImageTiltShiftFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTiltShiftFilter+Bm.h"

@interface GPUImageTiltShiftFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)setTopFocusLevelBmBm:(NSInteger)BM;
+ (BOOL)setBottomFocusLevelBmBm:(NSInteger)BM;
+ (BOOL)setFocusFallOffRateBmBm:(NSInteger)BM;

@end
