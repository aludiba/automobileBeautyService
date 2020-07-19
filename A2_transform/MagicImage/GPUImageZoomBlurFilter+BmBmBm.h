#import "GPUImageFilter.h"
#import "GPUImageZoomBlurFilter.h"
#import "GPUImageZoomBlurFilter+Bm.h"
#import "GPUImageZoomBlurFilter+BmBm.h"

@interface GPUImageZoomBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurCenterBmBmBm:(NSInteger)BM;

@end
