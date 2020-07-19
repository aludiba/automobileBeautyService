#import "hbGPUImageChromaKeyFilterk.h"
@implementation hbGPUImageChromaKeyFilterk
+ (BOOL)Uinit:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)wSetcolortoreplacerednGreensBlue:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)pSetthresholdsensitivity:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)DSetsmoothing:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
