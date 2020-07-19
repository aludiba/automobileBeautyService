#import "GPUImageChromaKeyBlendFilter+Bm.h"
@implementation GPUImageChromaKeyBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setThresholdSensitivityBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setSmoothingBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
