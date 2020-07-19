#import "BMGPUImagePinchDistortionFilterX+BmHb.h"
@implementation BMGPUImagePinchDistortionFilterX (BmHb)
+ (BOOL)pinitBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)SadjustAspectRatioBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)NForceprocessingatsizeBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)cSetinputsizeyAtindexBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)wSetinputrotationvAtindexBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)FSetaspectratioBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)ZSetradiusBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)LSetscaleBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)aSetcenterBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
