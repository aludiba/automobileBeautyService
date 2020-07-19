#import "GPUImageHighlightShadowFilter+Bm.h"
@implementation GPUImageHighlightShadowFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setShadowsBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setHighlightsBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
