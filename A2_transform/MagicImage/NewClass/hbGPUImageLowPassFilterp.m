#import "hbGPUImageLowPassFilterp.h"
@implementation hbGPUImageLowPassFilterp
+ (BOOL)JInithb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)OSetfilterstrengthhb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)jFilterstrengthhb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)bAddtargetattexturelocationhb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
