#import "BMGPUImageChromaKeyBlendFilterA.h"
@implementation BMGPUImageChromaKeyBlendFilterA
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)KSetcolortoreplaceredgreenbluebm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)oSetthresholdsensitivitybm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)VSetsmoothingbm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
