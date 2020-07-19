#import "SDWebImageCompat.h"
#import "SDWebImageManager.h"
#import "UIImageView+HighlightedWebCache.h"
#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"
#import "UIImageView+HighlightedWebCacheBm.h"

@interface UIImageView (HighlightedWebCacheBmHb)
+ (BOOL)sd_setHighlightedImageWithURLBmHb:(NSInteger)hb;
+ (BOOL)sd_setHighlightedImageWithURLOptionsBmHb:(NSInteger)hb;
+ (BOOL)sd_setHighlightedImageWithURLCompletedBmHb:(NSInteger)hb;
+ (BOOL)sd_setHighlightedImageWithURLOptionsCompletedBmHb:(NSInteger)hb;
+ (BOOL)sd_setHighlightedImageWithURLOptionsProgressCompletedBmHb:(NSInteger)hb;

@end
