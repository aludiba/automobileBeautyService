#import "GPUImageSourceOverBlendFilter+Hb.h"
@implementation GPUImageSourceOverBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
