#import "BMGPUImageBulgeDistortionFiltero+BmBm.h"
@implementation BMGPUImageBulgeDistortionFiltero (BmBm)
+ (BOOL)linitBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)xadjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)MForceprocessingatsizeBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)cSetinputsizezAtindexBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)LSetaspectratioBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)HSetinputrotationfAtindexBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)kSetradiusBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ZSetscaleBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)vSetcenterBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
