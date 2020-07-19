#import "GPUImageColorDodgeBlendFilter+Hb.h"
@implementation GPUImageColorDodgeBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
