#import "hbGPUImageStretchDistortionFilterY.h"
@implementation hbGPUImageStretchDistortionFilterY
+ (BOOL)SInithb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)iSetinputrotationatindexhb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)VSetcenterhb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
