#import "BMGPUImagePinchDistortionFilterW.h"
@implementation BMGPUImagePinchDistortionFilterW
+ (BOOL)RInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)wAdjustaspectratiobm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)vForceprocessingatsizebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)JSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)FSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sSetaspectratiobm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)WSetradiusbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ESetscalebm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)uSetcenterbm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
