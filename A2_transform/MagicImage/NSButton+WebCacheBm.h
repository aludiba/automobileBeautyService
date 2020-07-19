#import "SDWebImageCompat.h"
#import "SDWebImageManager.h"
#import "NSButton+WebCache.h"
#import "objc/runtime.h"
#import "UIView+WebCacheOperation.h"
#import "UIView+WebCache.h"

@interface NSButton (WebCacheBm)
+ (BOOL)sd_setImageWithURLBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageOptionsBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageOptionsCompletedBm:(NSInteger)BM;
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM;
+ (BOOL)sd_cancelCurrentImageLoadBm:(NSInteger)BM;
+ (BOOL)sd_cancelCurrentAlternateImageLoadBm:(NSInteger)BM;
+ (BOOL)sd_currentImageURLBm:(NSInteger)BM;
+ (BOOL)setSd_currentImageURLBm:(NSInteger)BM;
+ (BOOL)sd_currentAlternateImageURLBm:(NSInteger)BM;
+ (BOOL)setSd_currentAlternateImageURLBm:(NSInteger)BM;

@end
