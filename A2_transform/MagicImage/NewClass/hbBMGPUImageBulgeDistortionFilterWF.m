#import "hbBMGPUImageBulgeDistortionFilterWF.h"
@implementation hbBMGPUImageBulgeDistortionFilterWF
+ (BOOL)uOinitbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)eRadjustaspectratiobm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)lHforceprocessingatsizebm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)eFsetinputsizejatindexbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)IXsetaspectratiobm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)uWsetinputrotationaatindexbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)cLsetradiusbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)uCsetscalebm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)LMsetcenterbm:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
