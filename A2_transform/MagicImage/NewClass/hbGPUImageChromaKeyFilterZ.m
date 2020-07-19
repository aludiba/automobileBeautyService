#import "hbGPUImageChromaKeyFilterZ.h"
@implementation hbGPUImageChromaKeyFilterZ
+ (BOOL)Uinit:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)mSetcolortoreplaceredcGreenoBlue:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)LSetthresholdsensitivity:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)KSetsmoothing:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
