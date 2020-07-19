#import "UIImageView+HighlightedWebCacheBm.h"
@implementation UIImageView (HighlightedWebCacheBm)
+ (BOOL)sd_setHighlightedImageWithURLBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLCompletedBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsCompletedBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsProgressCompletedBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
