#import "SDWebImageCompat.h"
#import "SDWebImageManager.h"
#import "UIImageView+WebCache.h"
#import "objc/runtime.h"
#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"

@interface UIImageView (WebCacheBm)
+ (BOOL)sd_setImageWithURLBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithPreviousCachedImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setAnimationImagesWithURLsBm:(NSInteger)BM;
+ (BOOL)sd_animationOperationArrayBm:(NSInteger)BM;
+ (BOOL)sd_cancelCurrentAnimationImagesLoadBm:(NSInteger)BM;

@end
