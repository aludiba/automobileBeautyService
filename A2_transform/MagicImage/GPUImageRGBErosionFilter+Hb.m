#import "GPUImageRGBErosionFilter+Hb.h"
@implementation GPUImageRGBErosionFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
