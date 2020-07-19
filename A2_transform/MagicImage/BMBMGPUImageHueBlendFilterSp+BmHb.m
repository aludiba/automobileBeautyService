#import "BMBMGPUImageHueBlendFilterSp+BmHb.h"
@implementation BMBMGPUImageHueBlendFilterSp (BmHb)
+ (BOOL)ZTinitBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
