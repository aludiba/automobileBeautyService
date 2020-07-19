#import "GPUImageAdaptiveThresholdFilter+Hb.h"
@implementation GPUImageAdaptiveThresholdFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
