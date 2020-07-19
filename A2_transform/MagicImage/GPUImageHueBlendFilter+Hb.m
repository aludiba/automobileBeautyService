#import "GPUImageHueBlendFilter+Hb.h"
@implementation GPUImageHueBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
