#import "NSButton+WebCacheBm.h"
@implementation NSButton (WebCacheBm)
+ (BOOL)sd_setImageWithURLBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)sd_setImageWithURLCompletedBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageCompletedBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsCompletedBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageOptionsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLCompletedBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageCompletedBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageOptionsCompletedBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sd_setAlternateImageWithURLPlaceholderimageOptionsProgressCompletedBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sd_cancelCurrentImageLoadBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)sd_cancelCurrentAlternateImageLoadBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_currentImageURLBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setSd_currentImageURLBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sd_currentAlternateImageURLBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setSd_currentAlternateImageURLBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
