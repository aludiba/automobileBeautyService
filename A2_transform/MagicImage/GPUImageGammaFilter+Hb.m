#import "GPUImageGammaFilter+Hb.h"
@implementation GPUImageGammaFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setGammaHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
