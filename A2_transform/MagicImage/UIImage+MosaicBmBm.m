#import "UIImage+MosaicBmBm.h"
@implementation UIImage (MosaicBmBm)
+ (BOOL)mosaicImage_all_WithLevelBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)mosaicImage_ios_6_0_WithLevelBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)mosaicImageWithLevelBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)mosaicDefaultImageBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)defaultMosaic_ios_6_0BmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
