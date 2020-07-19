#import "GPUImageChromaKeyBlendFilter+HbHb.h"
@implementation GPUImageChromaKeyBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setThresholdSensitivityHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setSmoothingHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
