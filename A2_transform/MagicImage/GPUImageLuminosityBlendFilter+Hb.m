#import "GPUImageLuminosityBlendFilter+Hb.h"
@implementation GPUImageLuminosityBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
