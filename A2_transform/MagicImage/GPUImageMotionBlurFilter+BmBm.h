#import "GPUImageFilter.h"
#import "GPUImageMotionBlurFilter.h"
#import "GPUImageMotionBlurFilter+Bm.h"

@interface GPUImageMotionBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)recalculateTexelOffsetsBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setBlurAngleBmBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBmBm:(NSInteger)BM;

@end
