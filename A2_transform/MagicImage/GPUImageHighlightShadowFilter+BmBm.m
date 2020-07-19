#import "GPUImageHighlightShadowFilter+BmBm.h"
@implementation GPUImageHighlightShadowFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setShadowsBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setHighlightsBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
