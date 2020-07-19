#import "BMGPUImageBulgeDistortionFiltero.h"
@implementation BMGPUImageBulgeDistortionFiltero
+ (BOOL)linit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)xadjustAspectRatio:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)MForceprocessingatsize:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)cSetinputsizezAtindex:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)LSetaspectratio:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)HSetinputrotationfAtindex:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)kSetradius:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ZSetscale:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)vSetcenter:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
