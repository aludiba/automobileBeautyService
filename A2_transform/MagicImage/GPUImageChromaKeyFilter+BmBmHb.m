#import "GPUImageChromaKeyFilter+BmBmHb.h"
@implementation GPUImageChromaKeyFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setThresholdSensitivityBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setSmoothingBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
