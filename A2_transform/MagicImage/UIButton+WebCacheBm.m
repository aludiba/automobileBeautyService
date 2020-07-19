#import "UIButton+WebCacheBm.h"
@implementation UIButton (WebCacheBm)
+ (BOOL)sd_currentImageURLBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)sd_imageURLForStateBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sd_setImageWithURLForstateBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageOptionsBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)sd_setImageWithURLForstateCompletedBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageCompletedBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sd_setImageWithURLForstatePlaceholderimageOptionsCompletedBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sd_currentBackgroundImageURLBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sd_backgroundImageURLForStateBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sd_setBackgroundImageWithURLForstateBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageOptionsBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sd_setBackgroundImageWithURLForstateCompletedBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageCompletedBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sd_setBackgroundImageWithURLForstatePlaceholderimageOptionsCompletedBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sd_cancelImageLoadForStateBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sd_cancelBackgroundImageLoadForStateBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)sd_imageURLStorageBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
