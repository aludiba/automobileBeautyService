#import "GPUImagePolkaDotFilter+BmHb.h"
@implementation GPUImagePolkaDotFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setDotScalingBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
