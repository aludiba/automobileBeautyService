#import "hbGPUImageChromaKeyFilterI.h"
@implementation hbGPUImageChromaKeyFilterI
+ (BOOL)zInitbmbm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)CSetcolortoreplaceredgreenbluebmbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)bSetthresholdsensitivitybmbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)pSetsmoothingbmbm:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
