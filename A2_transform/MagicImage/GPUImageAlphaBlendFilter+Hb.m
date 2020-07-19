#import "GPUImageAlphaBlendFilter+Hb.h"
@implementation GPUImageAlphaBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setMixHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
