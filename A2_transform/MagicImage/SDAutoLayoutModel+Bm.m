#import "SDAutoLayoutModel+Bm.h"
@implementation SDAutoLayoutModel (Bm)
+ (BOOL)leftSpaceToViewBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)rightSpaceToViewBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)topSpaceToViewBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bottomSpaceToViewBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)marginToViewblockWithKeyBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)widthIsBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)heightIsBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)widthRatioToViewBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)heightRatioToViewBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)maxWidthIsBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)maxHeightIsBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)minWidthIsBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)minHeightIsBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)limitingWidthHeightWithKeyBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)marginEqualToViewBlockWithKeyBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)leftEqualToViewBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rightEqualToViewBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)topEqualToViewBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)bottomEqualToViewBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)centerXEqualToViewBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)centerYEqualToViewBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)marginBlockWithKeyBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)xIsBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)yIsBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)centerXIsBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)centerYIsBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)autoHeightRatioBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)autoWidthRatioBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)spaceToSuperViewBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)widthEqualToHeightBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)heightEqualToWidthBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)(CGFloat))offsetBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
