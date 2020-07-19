#import "GPUImageErosionFilter+Hb.h"
@implementation GPUImageErosionFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
