#import "hbGPUImageLowPassFilterM.h"
@implementation hbGPUImageLowPassFilterM
+ (BOOL)bInithb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)NSetfilterstrengthhb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)LFilterstrengthhb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)wAddtargetattexturelocationhb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
