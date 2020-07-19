#import "GPUImageLowPassFilter+HbHb.h"
@implementation GPUImageLowPassFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setFilterStrengthHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)filterStrengthHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)addTargetAttexturelocationHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
