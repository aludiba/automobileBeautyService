#import "GPUImagePolkaDotFilter+Hb.h"
@implementation GPUImagePolkaDotFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setDotScalingHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
