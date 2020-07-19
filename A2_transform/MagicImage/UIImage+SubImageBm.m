#import "UIImage+SubImageBm.h"
@implementation UIImage (SubImageBm)
+ (BOOL)subImageWithRectBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rescaleImageToSizeBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)rescaleImageToPXBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)getTiledImageWithSizeBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)imageFromViewBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)mergeImageWithimageBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
