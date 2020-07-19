#import "hbGPUImageLightenBlendFilterY.h"
@implementation hbGPUImageLightenBlendFilterY
+ (BOOL)fInithb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
