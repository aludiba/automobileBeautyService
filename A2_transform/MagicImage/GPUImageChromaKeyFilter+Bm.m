#import "GPUImageChromaKeyFilter+Bm.h"
@implementation GPUImageChromaKeyFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setThresholdSensitivityBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setSmoothingBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
