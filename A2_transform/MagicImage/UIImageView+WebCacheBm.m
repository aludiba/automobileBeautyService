#import "UIImageView+WebCacheBm.h"
@implementation UIImageView (WebCacheBm)
+ (BOOL)sd_setImageWithURLBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sd_setImageWithURLCompletedBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageCompletedBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsCompletedBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sd_setImageWithPreviousCachedImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sd_setAnimationImagesWithURLsBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sd_animationOperationArrayBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sd_cancelCurrentAnimationImagesLoadBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
