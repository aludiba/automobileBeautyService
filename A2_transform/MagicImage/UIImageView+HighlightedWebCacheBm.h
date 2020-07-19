#import "SDWebImageCompat.h"
#import "SDWebImageManager.h"
#import "UIImageView+HighlightedWebCache.h"
#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"

@interface UIImageView (HighlightedWebCacheBm)
+ (BOOL)sd_setHighlightedImageWithURLBm:(NSInteger)BM;
+ (BOOL)sd_setHighlightedImageWithURLOptionsBm:(NSInteger)BM;
+ (BOOL)sd_setHighlightedImageWithURLCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setHighlightedImageWithURLOptionsCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setHighlightedImageWithURLOptionsProgressCompletedBm:(NSInteger)BM;

@end
