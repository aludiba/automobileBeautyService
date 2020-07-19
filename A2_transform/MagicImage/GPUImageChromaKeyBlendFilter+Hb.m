#import "GPUImageChromaKeyBlendFilter+Hb.h"
@implementation GPUImageChromaKeyBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setThresholdSensitivityHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setSmoothingHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
