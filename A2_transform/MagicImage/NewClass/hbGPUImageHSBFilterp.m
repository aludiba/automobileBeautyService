#import "hbGPUImageHSBFilterp.h"
@implementation hbGPUImageHSBFilterp
+ (BOOL)tinit:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)ureset:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)ERotatehue:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)dAdjustsaturation:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)vAdjustbrightness:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)Y_updateColorMatrix:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)nfor(x=0:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
