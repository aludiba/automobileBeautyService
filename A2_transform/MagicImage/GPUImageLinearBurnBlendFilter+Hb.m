#import "GPUImageLinearBurnBlendFilter+Hb.h"
@implementation GPUImageLinearBurnBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
