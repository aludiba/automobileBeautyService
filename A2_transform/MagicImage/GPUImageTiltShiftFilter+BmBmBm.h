#import "GPUImageFilterGroup.h"
#import "GPUImageTiltShiftFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTiltShiftFilter+Bm.h"
#import "GPUImageTiltShiftFilter+BmBm.h"

@interface GPUImageTiltShiftFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setTopFocusLevelBmBmBm:(NSInteger)BM;
+ (BOOL)setBottomFocusLevelBmBmBm:(NSInteger)BM;
+ (BOOL)setFocusFallOffRateBmBmBm:(NSInteger)BM;

@end
