#import "GPUImageFilter.h"
#import "GPUImageLuminanceRangeFilter.h"

@interface GPUImageLuminanceRangeFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setRangeReductionFactorHb:(NSInteger)hb;

@end
