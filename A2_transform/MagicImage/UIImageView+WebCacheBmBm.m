#import "UIImageView+WebCacheBmBm.h"
@implementation UIImageView (WebCacheBmBm)
+ (BOOL)sd_setImageWithURLBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)sd_setImageWithURLCompletedBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageCompletedBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsCompletedBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_setImageWithPreviousCachedImageWithURLPlaceholderimageOptionsProgressCompletedBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)sd_setAnimationImagesWithURLsBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sd_animationOperationArrayBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sd_cancelCurrentAnimationImagesLoadBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
