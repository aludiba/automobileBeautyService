#import "BMBMGPUImageHighlightShadowFilterCV+Hb.h"
@implementation BMBMGPUImageHighlightShadowFilterCV (Hb)
+ (BOOL)cVinitHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)DLsetshadowsHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)lTsethighlightsHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
