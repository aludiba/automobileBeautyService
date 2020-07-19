#import "BMBMGPUImageBulgeDistortionFilterbS.h"
@implementation BMBMGPUImageBulgeDistortionFilterbS
+ (BOOL)LOinitbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)GYadjustaspectratiobm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)IGforceprocessingatsizebm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)rZsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)HEsetaspectratiobm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)KTsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ZFsetradiusbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)RVsetscalebm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)IFsetcenterbm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
