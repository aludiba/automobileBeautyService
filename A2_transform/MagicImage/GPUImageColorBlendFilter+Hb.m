#import "GPUImageColorBlendFilter+Hb.h"
@implementation GPUImageColorBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
