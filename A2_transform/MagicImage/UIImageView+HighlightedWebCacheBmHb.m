#import "UIImageView+HighlightedWebCacheBmHb.h"
@implementation UIImageView (HighlightedWebCacheBmHb)
+ (BOOL)sd_setHighlightedImageWithURLBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLCompletedBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsCompletedBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)sd_setHighlightedImageWithURLOptionsProgressCompletedBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
