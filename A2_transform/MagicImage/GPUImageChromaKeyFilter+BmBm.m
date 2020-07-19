#import "GPUImageChromaKeyFilter+BmBm.h"
@implementation GPUImageChromaKeyFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setThresholdSensitivityBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setSmoothingBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
