#import "GPUImageFilter.h"
#import "GPUImageMotionBlurFilter.h"

@interface GPUImageMotionBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)recalculateTexelOffsetsBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setBlurAngleBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBm:(NSInteger)BM;

@end
