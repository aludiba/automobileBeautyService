#import "BMBMGPUImageBulgeDistortionFilterFn.h"
@implementation BMBMGPUImageBulgeDistortionFilterFn
+ (BOOL)RXinitbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)qRadjustaspectratiobm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)cOforceprocessingatsizebm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)vVsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)JLsetaspectratiobm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)AUsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)PPsetradiusbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)uCsetscalebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)BTsetcenterbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
