#import "GPUImageHSBFilter+Hb.h"
@implementation GPUImageHSBFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)resetHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)rotateHueHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)adjustSaturationHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)adjustBrightnessHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)_updateColorMatrixHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)for(x=0Hb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
