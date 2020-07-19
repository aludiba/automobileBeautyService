#import "GPUImageChromaKeyFilter+HbHb.h"
@implementation GPUImageChromaKeyFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setThresholdSensitivityHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setSmoothingHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
