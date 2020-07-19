#import "GPUImageSaturationFilter+Hb.h"
@implementation GPUImageSaturationFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setSaturationHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
