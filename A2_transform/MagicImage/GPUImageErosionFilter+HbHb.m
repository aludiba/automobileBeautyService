#import "GPUImageErosionFilter+HbHb.h"
@implementation GPUImageErosionFilter (HbHb)
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
