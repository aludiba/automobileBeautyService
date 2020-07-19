#import "BMGPUImagePinchDistortionFilterX+BmBm.h"
@implementation BMGPUImagePinchDistortionFilterX (BmBm)
+ (BOOL)pinitBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)SadjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)NForceprocessingatsizeBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)cSetinputsizeyAtindexBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)wSetinputrotationvAtindexBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)FSetaspectratioBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)ZSetradiusBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)LSetscaleBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)aSetcenterBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
