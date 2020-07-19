#import "BMGPUImagePinchDistortionFilterJ.h"
@implementation BMGPUImagePinchDistortionFilterJ
+ (BOOL)HInitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ZAdjustaspectratiobm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)nForceprocessingatsizebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)iSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)SSetaspectratiobm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)FSetradiusbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)VSetscalebm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)NSetcenterbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
