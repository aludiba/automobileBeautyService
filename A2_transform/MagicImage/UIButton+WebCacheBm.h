#import "SDWebImageCompat.h"
#import "SDWebImageManager.h"
#import "UIButton+WebCache.h"
#import "objc/runtime.h"
#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"

@interface UIButton (WebCacheBm)
+ (BOOL)sd_currentImageURLBm:(NSInteger)BM;
+ (BOOL)sd_imageURLForStateBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLForstateBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageOptionsBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLForstateCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageOptionsCompletedBm:(NSInteger)BM;
+ (BOOL)sd_currentBackgroundImageURLBm:(NSInteger)BM;
+ (BOOL)sd_backgroundImageURLForStateBm:(NSInteger)BM;
+ (BOOL)sd_setBackgroundImageWithURLForstateBm:(NSInteger)BM;
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageBm:(NSInteger)BM;
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageOptionsBm:(NSInteger)BM;
+ (BOOL)sd_setBackgroundImageWithURLForstateCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageOptionsCompletedBm:(NSInteger)BM;
+ (BOOL)sd_cancelImageLoadForStateBm:(NSInteger)BM;
+ (BOOL)sd_cancelBackgroundImageLoadForStateBm:(NSInteger)BM;
+ (BOOL)sd_imageURLStorageBm:(NSInteger)BM;

@end
