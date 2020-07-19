#import "GPUImageFilter.h"
#import "GPUImageLuminanceThresholdFilter.h"
#import "GPUImageLuminanceThresholdFilter+Bm.h"
#import "GPUImageLuminanceThresholdFilter+BmHb.h"

@interface GPUImageLuminanceThresholdFilter (BmHbHb)
+ (BOOL)initBmHbHb:(NSInteger)hb;
+ (BOOL)setThresholdBmHbHb:(NSInteger)hb;

@end
