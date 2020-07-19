#import "UIView+SDLayoutExtentionBm.h"
@implementation UIView (SDLayoutExtentionBm)
+ (BOOL)(CGRect))didFinishAutoLayoutBlockBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setDidFinishAutoLayoutBlockBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)sd_cornerRadiusBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setSd_cornerRadiusBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sd_cornerRadiusFromWidthRatioBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setSd_cornerRadiusFromWidthRatioBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sd_cornerRadiusFromHeightRatioBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setSd_cornerRadiusFromHeightRatioBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sd_equalWidthSubviewsBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setSd_equalWidthSubviewsBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sd_addSubviewsBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
