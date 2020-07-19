#import "BMGPUImagePinchDistortionFilterX.h"
@implementation BMGPUImagePinchDistortionFilterX
+ (BOOL)pinit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)SadjustAspectRatio:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)NForceprocessingatsize:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)cSetinputsizeyAtindex:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)wSetinputrotationvAtindex:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)FSetaspectratio:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZSetradius:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)LSetscale:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)aSetcenter:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
