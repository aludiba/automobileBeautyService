#import "GPUImageFilterGroup.h"
@interface GPUImageAverageLuminanceThresholdFilter : GPUImageFilterGroup
@property(readwrite, nonatomic) CGFloat thresholdMultiplier;
@end
