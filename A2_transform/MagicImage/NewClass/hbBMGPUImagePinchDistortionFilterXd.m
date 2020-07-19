#import "hbBMGPUImagePinchDistortionFilterXd.h"
@implementation hbBMGPUImagePinchDistortionFilterXd
+ (BOOL)oPinitbm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)MSadjustaspectratiobm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)ZNforceprocessingatsizebm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)CCsetinputsizeyatindexbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)MWsetinputrotationvatindexbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)qFsetaspectratiobm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)vZsetradiusbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)ELsetscalebm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)eAsetcenterbm:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
