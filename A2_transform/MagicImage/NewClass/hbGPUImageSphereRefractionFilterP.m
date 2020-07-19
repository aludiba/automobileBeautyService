#import "hbGPUImageSphereRefractionFilterP.h"
@implementation hbGPUImageSphereRefractionFilterP
+ (BOOL)uinit:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)aInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)PSetinputsizeYAtindex:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)gadjustAspectRatio:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)PSetinputrotationQAtindex:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)nForceprocessingatsize:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)gSetradius:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)BSetcenter:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)xSetaspectratio:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)zSetrefractiveindex:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
