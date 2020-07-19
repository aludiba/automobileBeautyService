#import "BMGPUImageBulgeDistortionFilterW.h"
@implementation BMGPUImageBulgeDistortionFilterW
+ (BOOL)oinit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)radjustAspectRatio:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)HForceprocessingatsize:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)fSetinputsizejAtindex:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)XSetaspectratio:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)wSetinputrotationaAtindex:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)LSetradius:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)CSetscale:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)MSetcenter:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
