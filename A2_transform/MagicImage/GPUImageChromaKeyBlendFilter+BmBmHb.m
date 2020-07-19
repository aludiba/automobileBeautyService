#import "GPUImageChromaKeyBlendFilter+BmBmHb.h"
@implementation GPUImageChromaKeyBlendFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setThresholdSensitivityBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setSmoothingBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
