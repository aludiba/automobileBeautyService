#import "GPUImageColorBurnBlendFilter+Hb.h"
@implementation GPUImageColorBurnBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
