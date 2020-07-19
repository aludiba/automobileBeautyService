#import "UIImageView+HighlightedWebCacheBmBm.h"
@implementation UIImageView (HighlightedWebCacheBmBm)
+ (BOOL)sd_setHighlightedImageWithURLBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLCompletedBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsCompletedBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsProgressCompletedBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
