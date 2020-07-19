#import "SDAutoLayoutModel+BmBm.h"
@implementation SDAutoLayoutModel (BmBm)
+ (BOOL)leftSpaceToViewBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rightSpaceToViewBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)topSpaceToViewBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)bottomSpaceToViewBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)marginToViewblockWithKeyBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)widthIsBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)heightIsBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)widthRatioToViewBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)heightRatioToViewBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)maxWidthIsBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)maxHeightIsBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)minWidthIsBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)minHeightIsBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)limitingWidthHeightWithKeyBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)marginEqualToViewBlockWithKeyBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)leftEqualToViewBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rightEqualToViewBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)topEqualToViewBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)bottomEqualToViewBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)centerXEqualToViewBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)centerYEqualToViewBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)marginBlockWithKeyBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)xIsBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)yIsBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)centerXIsBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)centerYIsBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)autoHeightRatioBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)autoWidthRatioBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)spaceToSuperViewBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)widthEqualToHeightBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)heightEqualToWidthBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)offsetBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
