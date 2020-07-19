#import "GPUImageExclusionBlendFilter+HbHb.h"
@implementation GPUImageExclusionBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
