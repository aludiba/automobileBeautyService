#import "hbGPUImageStretchDistortionFilterV.h"
@implementation hbGPUImageStretchDistortionFilterV
+ (BOOL)fInithb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)CSetinputrotationatindexhb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)xSetcenterhb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
