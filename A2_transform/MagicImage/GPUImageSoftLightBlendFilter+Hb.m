#import "GPUImageSoftLightBlendFilter+Hb.h"
@implementation GPUImageSoftLightBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
