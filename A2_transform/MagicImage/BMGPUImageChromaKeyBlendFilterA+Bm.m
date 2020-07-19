#import "BMGPUImageChromaKeyBlendFilterA+Bm.h"
@implementation BMGPUImageChromaKeyBlendFilterA (Bm)
+ (BOOL)bInitbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)KSetcolortoreplaceredgreenbluebmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)oSetthresholdsensitivitybmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)VSetsmoothingbmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
