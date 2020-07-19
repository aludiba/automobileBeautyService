#import "GPUImageFilter.h"
#import "GPUImageLuminanceRangeFilter.h"
#import "GPUImageLuminanceRangeFilter+Bm.h"

@interface GPUImageLuminanceRangeFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setRangeReductionFactorBmHb:(NSInteger)hb;

@end
