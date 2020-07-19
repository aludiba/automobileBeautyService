#import "UIImage+SubImageBmHb.h"
@implementation UIImage (SubImageBmHb)
+ (BOOL)subImageWithRectBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)rescaleImageToSizeBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)rescaleImageToPXBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)getTiledImageWithSizeBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)imageFromViewBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)mergeImageWithimageBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
