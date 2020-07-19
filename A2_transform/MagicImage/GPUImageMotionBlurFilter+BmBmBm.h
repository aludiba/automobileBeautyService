#import "GPUImageFilter.h"
#import "GPUImageMotionBlurFilter.h"
#import "GPUImageMotionBlurFilter+Bm.h"
#import "GPUImageMotionBlurFilter+BmBm.h"

@interface GPUImageMotionBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)recalculateTexelOffsetsBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurAngleBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBmBmBm:(NSInteger)BM;

@end
