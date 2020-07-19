#import "GPUImageDissolveBlendFilter+Hb.h"
@implementation GPUImageDissolveBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setMixHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
