#import "hbGPUImageAlphaBlendFilterF.h"
@implementation hbGPUImageAlphaBlendFilterF
+ (BOOL)pinit:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)NSetmix:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
