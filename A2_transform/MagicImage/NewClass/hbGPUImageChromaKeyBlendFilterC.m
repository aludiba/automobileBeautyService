#import "hbGPUImageChromaKeyBlendFilterc.h"
@implementation hbGPUImageChromaKeyBlendFilterc
+ (BOOL)yInitbmbm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)uSetcolortoreplaceredgreenbluebmbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)wSetthresholdsensitivitybmbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)cSetsmoothingbmbm:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
