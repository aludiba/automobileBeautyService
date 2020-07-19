#import "BMBMGPUImagePinchDistortionFilterWA.h"
@implementation BMBMGPUImagePinchDistortionFilterWA
+ (BOOL)MRinitbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)TWadjustaspectratiobm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rVforceprocessingatsizebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)lJsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dFsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ZSsetaspectratiobm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)JWsetradiusbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)wEsetscalebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)PUsetcenterbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
