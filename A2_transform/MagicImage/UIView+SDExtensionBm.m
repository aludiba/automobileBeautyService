#import "UIView+SDExtensionBm.h"
@implementation UIView (SDExtensionBm)
+ (BOOL)sd_heightBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setSd_heightBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sd_widthBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setSd_widthBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sd_yBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setSd_yBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sd_xBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setSd_xBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
