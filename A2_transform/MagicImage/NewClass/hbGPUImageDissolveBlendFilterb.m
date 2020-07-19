#import "hbGPUImageDissolveBlendFilterb.h"
@implementation hbGPUImageDissolveBlendFilterb
+ (BOOL)Rinit:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)mSetmix:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
