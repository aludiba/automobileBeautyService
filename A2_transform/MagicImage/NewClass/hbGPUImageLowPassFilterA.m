#import "hbGPUImageLowPassFilterA.h"
@implementation hbGPUImageLowPassFilterA
+ (BOOL)kinit:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)eSetfilterstrength:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)GfilterStrength:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)lAddtargetUAttexturelocation:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
