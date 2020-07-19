#import "GPUImageLowPassFilter+Hb.h"
@implementation GPUImageLowPassFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setFilterStrengthHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)filterStrengthHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
