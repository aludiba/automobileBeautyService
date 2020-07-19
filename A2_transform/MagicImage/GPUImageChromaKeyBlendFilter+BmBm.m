#import "GPUImageChromaKeyBlendFilter+BmBm.h"
@implementation GPUImageChromaKeyBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setThresholdSensitivityBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setSmoothingBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
