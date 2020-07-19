#import "GPUImageOverlayBlendFilter+Hb.h"
@implementation GPUImageOverlayBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
