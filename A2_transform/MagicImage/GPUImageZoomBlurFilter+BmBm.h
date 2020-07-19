#import "GPUImageFilter.h"
#import "GPUImageZoomBlurFilter.h"
#import "GPUImageZoomBlurFilter+Bm.h"

@interface GPUImageZoomBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBmBm:(NSInteger)BM;
+ (BOOL)setBlurCenterBmBm:(NSInteger)BM;

@end
