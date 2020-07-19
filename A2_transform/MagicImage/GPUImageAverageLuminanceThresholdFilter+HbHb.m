#import "GPUImageAverageLuminanceThresholdFilter+HbHb.h"
@implementation GPUImageAverageLuminanceThresholdFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
