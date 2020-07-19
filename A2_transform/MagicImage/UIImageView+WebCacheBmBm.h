#import "SDWebImageCompat.h"
#import "SDWebImageManager.h"
#import "UIImageView+WebCache.h"
#import "objc/runtime.h"
#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"
#import "UIImageView+WebCacheBm.h"

@interface UIImageView (WebCacheBmBm)
+ (BOOL)sd_setImageWithURLBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLCompletedBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageCompletedBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsCompletedBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBmBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithPreviousCachedImageWithURLPlaceholderimageOptionsProgressCompletedBmBm:(NSInteger)BM;
+ (BOOL)sd_setAnimationImagesWithURLsBmBm:(NSInteger)BM;
+ (BOOL)sd_animationOperationArrayBmBm:(NSInteger)BM;
+ (BOOL)sd_cancelCurrentAnimationImagesLoadBmBm:(NSInteger)BM;

@end
