#import "GPUImageChromaKeyFilter+BmBmBm.h"
@implementation GPUImageChromaKeyFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setThresholdSensitivityBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setSmoothingBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
