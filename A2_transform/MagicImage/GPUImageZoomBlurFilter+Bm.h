#import "GPUImageFilter.h"
#import "GPUImageZoomBlurFilter.h"

@interface GPUImageZoomBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBm:(NSInteger)BM;
+ (BOOL)setBlurCenterBm:(NSInteger)BM;

@end
