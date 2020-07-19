#import "hbGPUImageDivideBlendFilterI.h"
@implementation hbGPUImageDivideBlendFilterI
+ (BOOL)zinit:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
