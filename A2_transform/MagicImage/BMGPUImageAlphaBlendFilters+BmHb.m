#import "BMGPUImageAlphaBlendFilters+BmHb.h"
@implementation BMGPUImageAlphaBlendFilters (BmHb)
+ (BOOL)NinitBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)SSetmixBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
