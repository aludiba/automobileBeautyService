#import "BMGPUImageChromaKeyBlendFiltert+Bm.h"
@implementation BMGPUImageChromaKeyBlendFiltert (Bm)
+ (BOOL)finitBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)VSetcolortoreplaceredxGreenqBlueBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)HSetthresholdsensitivityBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)BSetsmoothingBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
