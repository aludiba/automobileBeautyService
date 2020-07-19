#import "BMBMGPUImageBulgeDistortionFilterFA+Hb.h"
@implementation BMBMGPUImageBulgeDistortionFilterFA (Hb)
+ (BOOL)mXinitbmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)fRadjustaspectratiobmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)COforceprocessingatsizebmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)XVsetinputsizeatindexbmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)vLsetaspectratiobmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)XUsetinputrotationatindexbmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)EPsetradiusbmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)VCsetscalebmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)MTsetcenterbmHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
