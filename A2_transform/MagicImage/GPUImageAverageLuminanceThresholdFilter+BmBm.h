#import "GPUImageFilterGroup.h"
#import "GPUImageAverageLuminanceThresholdFilter.h"
#import "GPUImageLuminosity.h"
#import "GPUImageLuminanceThresholdFilter.h"
#import "GPUImageAverageLuminanceThresholdFilter+Bm.h"

@interface GPUImageAverageLuminanceThresholdFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
