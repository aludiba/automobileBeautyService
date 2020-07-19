#import "hbGPUImagePinchDistortionFilterR.h"
@implementation hbGPUImagePinchDistortionFilterR
+ (BOOL)oInithb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)uAdjustaspectratiohb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)nForceprocessingatsizehb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)JSetinputsizeatindexhb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)LSetinputrotationatindexhb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)lSetaspectratiohb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)pSetradiushb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)GSetscalehb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)mSetcenterhb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
