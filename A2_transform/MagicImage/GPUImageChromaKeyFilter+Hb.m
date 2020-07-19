#import "GPUImageChromaKeyFilter+Hb.h"
@implementation GPUImageChromaKeyFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setThresholdSensitivityHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setSmoothingHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
