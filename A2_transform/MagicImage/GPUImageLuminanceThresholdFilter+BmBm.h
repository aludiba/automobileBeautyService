#import "GPUImageFilter.h"
#import "GPUImageLuminanceThresholdFilter.h"
#import "GPUImageLuminanceThresholdFilter+Bm.h"

@interface GPUImageLuminanceThresholdFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBm:(NSInteger)BM;

@end
