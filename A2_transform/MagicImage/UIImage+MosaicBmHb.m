#import "UIImage+MosaicBmHb.h"
@implementation UIImage (MosaicBmHb)
+ (BOOL)mosaicImage_all_WithLevelBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)mosaicImage_ios_6_0_WithLevelBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)mosaicImageWithLevelBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)mosaicDefaultImageBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)defaultMosaic_ios_6_0BmHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
