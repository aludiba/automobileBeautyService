#import "BMBMGPUImageBulgeDistortionFilterFA.h"
@implementation BMBMGPUImageBulgeDistortionFilterFA
+ (BOOL)mXinitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)fRadjustaspectratiobm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)COforceprocessingatsizebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)XVsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)vLsetaspectratiobm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)XUsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)EPsetradiusbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)VCsetscalebm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)MTsetcenterbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
