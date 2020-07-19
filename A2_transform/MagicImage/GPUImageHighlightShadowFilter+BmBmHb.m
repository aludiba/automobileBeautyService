#import "GPUImageHighlightShadowFilter+BmBmHb.h"
@implementation GPUImageHighlightShadowFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setShadowsBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setHighlightsBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
