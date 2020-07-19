#import "GPUImageFilter.h"
#import "GPUImageLuminanceRangeFilter.h"
#import "GPUImageLuminanceRangeFilter+Bm.h"

@interface GPUImageLuminanceRangeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setRangeReductionFactorBmBm:(NSInteger)BM;

@end
