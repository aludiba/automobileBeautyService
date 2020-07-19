#import "UIView+SDLayoutExtentionBmBm.h"
@implementation UIView (SDLayoutExtentionBmBm)
+ (BOOL)didFinishAutoLayoutBlockBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setDidFinishAutoLayoutBlockBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)sd_cornerRadiusBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setSd_cornerRadiusBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sd_cornerRadiusFromWidthRatioBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setSd_cornerRadiusFromWidthRatioBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)sd_cornerRadiusFromHeightRatioBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setSd_cornerRadiusFromHeightRatioBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sd_equalWidthSubviewsBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setSd_equalWidthSubviewsBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sd_addSubviewsBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
