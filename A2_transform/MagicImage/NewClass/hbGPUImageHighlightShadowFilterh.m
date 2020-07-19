#import "hbGPUImageHighlightShadowFilterh.h"
@implementation hbGPUImageHighlightShadowFilterh
+ (BOOL)Ninit:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)zSetshadows:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)kSethighlights:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
