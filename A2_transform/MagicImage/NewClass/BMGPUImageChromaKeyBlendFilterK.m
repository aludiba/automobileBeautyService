#import "BMGPUImageChromaKeyBlendFilterK.h"
@implementation BMGPUImageChromaKeyBlendFilterK
+ (BOOL)JInitbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)HSetcolortoreplaceredgreenbluebmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)HSetthresholdsensitivitybmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)MSetsmoothingbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
