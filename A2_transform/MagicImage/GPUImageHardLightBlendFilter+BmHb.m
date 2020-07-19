#import "GPUImageHardLightBlendFilter+BmHb.h"
@implementation GPUImageHardLightBlendFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
