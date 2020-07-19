#import "hbGPUImageLowPassFiltero.h"
@implementation hbGPUImageLowPassFiltero
+ (BOOL)Linit:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)kSetfilterstrength:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)TfilterStrength:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)fAddtargetDAttexturelocation:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
