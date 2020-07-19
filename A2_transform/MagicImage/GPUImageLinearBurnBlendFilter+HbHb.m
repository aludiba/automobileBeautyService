#import "GPUImageLinearBurnBlendFilter+HbHb.h"
@implementation GPUImageLinearBurnBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
