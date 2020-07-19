#import "BMGPUImagePinchDistortionFilterB.h"
@implementation BMGPUImagePinchDistortionFilterB
+ (BOOL)Zinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)aadjustAspectRatio:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)mForceprocessingatsize:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)iSetinputsizegAtindex:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)mSetinputrotationOAtindex:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)ASetaspectratio:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)mSetradius:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)JSetscale:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)tSetcenter:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
