#import "UIView+SDExtensionBmHb.h"
@implementation UIView (SDExtensionBmHb)
+ (BOOL)sd_heightBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setSd_heightBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)sd_widthBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setSd_widthBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)sd_yBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setSd_yBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)sd_xBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setSd_xBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
