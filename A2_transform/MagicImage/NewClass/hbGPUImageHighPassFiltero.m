#import "hbGPUImageHighPassFiltero.h"
@implementation hbGPUImageHighPassFiltero
+ (BOOL)Finit:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)FSetfilterstrength:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)ufilterStrength:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
