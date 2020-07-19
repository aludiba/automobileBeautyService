#import "GPUImageLightenBlendFilter+Hb.h"
@implementation GPUImageLightenBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
