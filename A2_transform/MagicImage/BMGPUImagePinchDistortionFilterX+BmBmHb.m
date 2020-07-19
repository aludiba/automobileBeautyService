#import "BMGPUImagePinchDistortionFilterX+BmBmHb.h"
@implementation BMGPUImagePinchDistortionFilterX (BmBmHb)
+ (BOOL)pinitBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)SadjustAspectRatioBmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)NForceprocessingatsizeBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)cSetinputsizeyAtindexBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)wSetinputrotationvAtindexBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)FSetaspectratioBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)ZSetradiusBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)LSetscaleBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)aSetcenterBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
