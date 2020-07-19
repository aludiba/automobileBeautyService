#import "hbGPUImagePinchDistortionFilterY.h"
@implementation hbGPUImagePinchDistortionFilterY
+ (BOOL)ginit:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)JadjustAspectRatio:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)lForceprocessingatsize:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)SSetinputsizeCAtindex:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)RSetinputrotationbAtindex:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)gSetaspectratio:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)TSetradius:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)ZSetscale:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)kSetcenter:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
