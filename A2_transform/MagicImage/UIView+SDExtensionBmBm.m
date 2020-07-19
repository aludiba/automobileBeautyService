#import "UIView+SDExtensionBmBm.h"
@implementation UIView (SDExtensionBmBm)
+ (BOOL)sd_heightBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setSd_heightBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sd_widthBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setSd_widthBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sd_yBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setSd_yBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sd_xBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setSd_xBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
