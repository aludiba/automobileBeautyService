#import "GPUImageAverageLuminanceThresholdFilter+Hb.h"
@implementation GPUImageAverageLuminanceThresholdFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
