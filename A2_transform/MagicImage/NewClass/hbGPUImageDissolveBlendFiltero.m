#import "hbGPUImageDissolveBlendFiltero.h"
@implementation hbGPUImageDissolveBlendFiltero
+ (BOOL)Hinit:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)ZSetmix:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
