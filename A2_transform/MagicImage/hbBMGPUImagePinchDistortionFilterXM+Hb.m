#import "hbBMGPUImagePinchDistortionFilterXM+Hb.h"
@implementation hbBMGPUImagePinchDistortionFilterXM (Hb)
+ (BOOL)VPinitbmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)oSadjustaspectratiobmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)iNforceprocessingatsizebmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)aCsetinputsizeyatindexbmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)PWsetinputrotationvatindexbmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)xFsetaspectratiobmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)NZsetradiusbmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)lLsetscalebmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)OAsetcenterbmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
