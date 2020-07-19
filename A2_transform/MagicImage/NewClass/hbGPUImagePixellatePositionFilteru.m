#import "hbGPUImagePixellatePositionFilteru.h"
@implementation hbGPUImagePixellatePositionFilteru
+ (BOOL)rinit:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)sInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)cSetinputsizeOAtindex:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)wSetinputrotationhAtindex:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)UadjustAspectRatio:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)eForceprocessingatsize:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)bSetfractionalwidthofapixel:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)vSetaspectratio:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ySetcenter:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)RSetradius:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
