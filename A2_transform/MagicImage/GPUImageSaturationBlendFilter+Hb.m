#import "GPUImageSaturationBlendFilter+Hb.h"
@implementation GPUImageSaturationBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
