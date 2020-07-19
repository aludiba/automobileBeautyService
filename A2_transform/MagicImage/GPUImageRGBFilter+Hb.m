#import "GPUImageRGBFilter+Hb.h"
@implementation GPUImageRGBFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setRedHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setGreenHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setBlueHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
