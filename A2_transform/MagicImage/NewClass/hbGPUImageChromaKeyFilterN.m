#import "hbGPUImageChromaKeyFilterN.h"
@implementation hbGPUImageChromaKeyFilterN
+ (BOOL)HInithb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)YSetcolortoreplaceredgreenbluehb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)nSetthresholdsensitivityhb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)KSetsmoothinghb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
