#import "hbBMGPUImageBulgeDistortionFilterWD.h"
@implementation hbBMGPUImageBulgeDistortionFilterWD
+ (BOOL)oOinitbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)PRadjustaspectratiobm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)gHforceprocessingatsizebm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)gFsetinputsizejatindexbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)gXsetaspectratiobm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)sWsetinputrotationaatindexbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)VLsetradiusbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)LCsetscalebm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)sMsetcenterbm:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
