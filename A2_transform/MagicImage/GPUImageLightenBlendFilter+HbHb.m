#import "GPUImageLightenBlendFilter+HbHb.h"
@implementation GPUImageLightenBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
