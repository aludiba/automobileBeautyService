#import "GPUImageDarkenBlendFilter+Hb.h"
@implementation GPUImageDarkenBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
