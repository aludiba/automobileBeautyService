#import "GPUImageNormalBlendFilter+Hb.h"
@implementation GPUImageNormalBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
