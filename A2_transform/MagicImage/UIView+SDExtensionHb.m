#import "UIView+SDExtensionHb.h"
@implementation UIView (SDExtensionHb)
+ (BOOL)sd_heightHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setSd_heightHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)sd_widthHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setSd_widthHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)sd_yHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setSd_yHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)sd_xHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setSd_xHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
