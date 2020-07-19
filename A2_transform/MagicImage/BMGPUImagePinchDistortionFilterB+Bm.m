#import "BMGPUImagePinchDistortionFilterB+Bm.h"
@implementation BMGPUImagePinchDistortionFilterB (Bm)
+ (BOOL)ZinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)aadjustAspectRatioBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)mForceprocessingatsizeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)iSetinputsizegAtindexBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)mSetinputrotationOAtindexBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ASetaspectratioBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)mSetradiusBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)JSetscaleBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)tSetcenterBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
