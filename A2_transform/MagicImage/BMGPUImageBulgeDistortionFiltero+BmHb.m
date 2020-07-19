#import "BMGPUImageBulgeDistortionFiltero+BmHb.h"
@implementation BMGPUImageBulgeDistortionFiltero (BmHb)
+ (BOOL)linitBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)xadjustAspectRatioBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)MForceprocessingatsizeBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)cSetinputsizezAtindexBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)LSetaspectratioBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)HSetinputrotationfAtindexBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)kSetradiusBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ZSetscaleBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)vSetcenterBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
