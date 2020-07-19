#import "BMBMGPUImageBulgeDistortionFilterFu.h"
@implementation BMBMGPUImageBulgeDistortionFilterFu
+ (BOOL)FXinitbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)URadjustaspectratiobmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)pOforceprocessingatsizebmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)tVsetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)VLsetaspectratiobmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)IUsetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)PPsetradiusbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)YCsetscalebmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)PTsetcenterbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
