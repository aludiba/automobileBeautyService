#import "GPUImageLuminanceThresholdFilter+Hb.h"
@implementation GPUImageLuminanceThresholdFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setThresholdHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
