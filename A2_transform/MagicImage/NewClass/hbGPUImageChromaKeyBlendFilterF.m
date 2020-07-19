#import "hbGPUImageChromaKeyBlendFilterF.h"
@implementation hbGPUImageChromaKeyBlendFilterF
+ (BOOL)Iinit:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)QSetcolortoreplaceredrGreendBlue:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)FSetthresholdsensitivity:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)OSetsmoothing:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
