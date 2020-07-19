#import "BMGPUImagePinchDistortionFiltery.h"
@implementation BMGPUImagePinchDistortionFiltery
+ (BOOL)DInitbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sAdjustaspectratiobmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)OForceprocessingatsizebmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)lSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)HSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)lSetaspectratiobmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)oSetradiusbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)USetscalebmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)sSetcenterbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
