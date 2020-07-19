#import "BMGPUImageChromaKeyBlendFilterf.h"
@implementation BMGPUImageChromaKeyBlendFilterf
+ (BOOL)VInitbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)HSetcolortoreplaceredgreenbluebm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)wSetthresholdsensitivitybm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)FSetsmoothingbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
