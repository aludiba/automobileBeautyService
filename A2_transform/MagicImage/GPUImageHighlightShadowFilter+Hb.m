#import "GPUImageHighlightShadowFilter+Hb.h"
@implementation GPUImageHighlightShadowFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setShadowsHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setHighlightsHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
