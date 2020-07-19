#import "GPUImageFilter.h"
#import "GPUImageLuminanceThresholdFilter.h"
#import "GPUImageLuminanceThresholdFilter+Bm.h"

@interface GPUImageLuminanceThresholdFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmHb:(NSInteger)hb;

@end
