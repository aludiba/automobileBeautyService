#import "GPUImageHighlightShadowFilter+HbHb.h"
@implementation GPUImageHighlightShadowFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setShadowsHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setHighlightsHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
