#import "GPUImageFilterGroup.h"
#import "GPUImageAverageLuminanceThresholdFilter.h"
#import "GPUImageLuminosity.h"
#import "GPUImageLuminanceThresholdFilter.h"
#import "GPUImageAverageLuminanceThresholdFilter+Hb.h"

@interface GPUImageAverageLuminanceThresholdFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;

@end
