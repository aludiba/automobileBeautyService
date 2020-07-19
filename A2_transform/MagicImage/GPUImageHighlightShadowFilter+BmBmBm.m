#import "GPUImageHighlightShadowFilter+BmBmBm.h"
@implementation GPUImageHighlightShadowFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setShadowsBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setHighlightsBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
