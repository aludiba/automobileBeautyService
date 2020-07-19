#import "GPUImageChromaKeyFilter+HbHbHb.h"
@implementation GPUImageChromaKeyFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueHbHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setThresholdSensitivityHbHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setSmoothingHbHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
