#import "UIImage+MosaicBm.h"
@implementation UIImage (MosaicBm)
+ (BOOL)mosaicImage_all_WithLevelBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)mosaicImage_ios_6_0_WithLevelBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mosaicImageWithLevelBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)mosaicDefaultImageBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)defaultMosaic_ios_6_0Bm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
