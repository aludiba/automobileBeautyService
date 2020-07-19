#import "BMGPUImagePinchDistortionFilterX+Bm.h"
@implementation BMGPUImagePinchDistortionFilterX (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)SadjustAspectRatioBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)NForceprocessingatsizeBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)cSetinputsizeyAtindexBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)wSetinputrotationvAtindexBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)FSetaspectratioBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ZSetradiusBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)LSetscaleBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)aSetcenterBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
