#import "GPUImageLuminanceThresholdFilter+BmHbHb.h"
@implementation GPUImageLuminanceThresholdFilter (BmHbHb)
+ (BOOL)initBmHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setThresholdBmHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
