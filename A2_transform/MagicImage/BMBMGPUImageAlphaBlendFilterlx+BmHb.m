#import "BMBMGPUImageAlphaBlendFilterlx+BmHb.h"
@implementation BMBMGPUImageAlphaBlendFilterlx (BmHb)
+ (BOOL)gCinitBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)lNsetmixBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
