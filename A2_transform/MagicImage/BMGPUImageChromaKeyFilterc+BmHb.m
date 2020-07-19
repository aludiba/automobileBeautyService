#import "BMGPUImageChromaKeyFilterc+BmHb.h"
@implementation BMGPUImageChromaKeyFilterc (BmHb)
+ (BOOL)jInitbmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)USetcolortoreplaceredgreenbluebmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)ESetthresholdsensitivitybmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)GSetsmoothingbmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
