#import "GPUImageToonFilter+Hb.h"
@implementation GPUImageToonFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setThresholdHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setQuantizationLevelsHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
