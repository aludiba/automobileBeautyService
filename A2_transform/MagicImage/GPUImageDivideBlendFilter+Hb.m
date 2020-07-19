#import "GPUImageDivideBlendFilter+Hb.h"
@implementation GPUImageDivideBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
