#import "GPUImageHardLightBlendFilter+Hb.h"
@implementation GPUImageHardLightBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
