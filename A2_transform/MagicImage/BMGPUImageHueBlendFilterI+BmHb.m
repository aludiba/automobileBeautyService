#import "BMGPUImageHueBlendFilterI+BmHb.h"
@implementation BMGPUImageHueBlendFilterI (BmHb)
+ (BOOL)fInitbmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
