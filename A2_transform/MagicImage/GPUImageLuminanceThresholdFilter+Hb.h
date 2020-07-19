#import "GPUImageFilter.h"
#import "GPUImageLuminanceThresholdFilter.h"

@interface GPUImageLuminanceThresholdFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setThresholdHb:(NSInteger)hb;

@end
