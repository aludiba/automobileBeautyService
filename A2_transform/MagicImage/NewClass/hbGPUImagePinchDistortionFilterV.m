#import "hbGPUImagePinchDistortionFilterV.h"
@implementation hbGPUImagePinchDistortionFilterV
+ (BOOL)Einit:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)sadjustAspectRatio:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)gForceprocessingatsize:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)jSetinputsizeLAtindex:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)GSetinputrotationQAtindex:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)fSetaspectratio:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)jSetradius:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)MSetscale:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)NSetcenter:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
