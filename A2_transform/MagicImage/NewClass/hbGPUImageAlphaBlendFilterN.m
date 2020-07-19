#import "hbGPUImageAlphaBlendFilterN.h"
@implementation hbGPUImageAlphaBlendFilterN
+ (BOOL)Tinit:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)ZSetmix:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
