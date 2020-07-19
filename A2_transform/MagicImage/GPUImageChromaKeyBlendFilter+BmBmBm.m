#import "GPUImageChromaKeyBlendFilter+BmBmBm.h"
@implementation GPUImageChromaKeyBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setThresholdSensitivityBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setSmoothingBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
