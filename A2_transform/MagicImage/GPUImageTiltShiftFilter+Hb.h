#import "GPUImageFilterGroup.h"
#import "GPUImageTiltShiftFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageTiltShiftFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setTopFocusLevelHb:(NSInteger)hb;
+ (BOOL)setBottomFocusLevelHb:(NSInteger)hb;
+ (BOOL)setFocusFallOffRateHb:(NSInteger)hb;

@end
