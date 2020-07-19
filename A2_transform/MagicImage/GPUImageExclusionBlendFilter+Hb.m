#import "GPUImageExclusionBlendFilter+Hb.h"
@implementation GPUImageExclusionBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
