#import "GPUImageLuminanceThresholdFilter+BmHb.h"
@implementation GPUImageLuminanceThresholdFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setThresholdBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
