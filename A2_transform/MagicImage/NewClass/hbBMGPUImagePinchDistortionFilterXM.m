#import "hbBMGPUImagePinchDistortionFilterXM.h"
@implementation hbBMGPUImagePinchDistortionFilterXM
+ (BOOL)VPinitbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)oSadjustaspectratiobm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)iNforceprocessingatsizebm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)aCsetinputsizeyatindexbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)PWsetinputrotationvatindexbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)xFsetaspectratiobm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)NZsetradiusbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)lLsetscalebm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)OAsetcenterbm:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
