#import "BMGPUImageBulgeDistortionFiltero+Bm.h"
@implementation BMGPUImageBulgeDistortionFiltero (Bm)
+ (BOOL)linitBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)xadjustAspectRatioBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)MForceprocessingatsizeBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)cSetinputsizezAtindexBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)LSetaspectratioBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)HSetinputrotationfAtindexBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)kSetradiusBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ZSetscaleBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)vSetcenterBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
