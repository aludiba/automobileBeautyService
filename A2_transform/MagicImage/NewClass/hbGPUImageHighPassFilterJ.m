#import "hbGPUImageHighPassFilterJ.h"
@implementation hbGPUImageHighPassFilterJ
+ (BOOL)Sinit:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)uSetfilterstrength:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)mfilterStrength:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
