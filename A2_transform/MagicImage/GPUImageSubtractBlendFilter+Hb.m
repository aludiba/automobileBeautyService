#import "GPUImageSubtractBlendFilter+Hb.h"
@implementation GPUImageSubtractBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
