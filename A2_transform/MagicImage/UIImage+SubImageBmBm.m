#import "UIImage+SubImageBmBm.h"
@implementation UIImage (SubImageBmBm)
+ (BOOL)subImageWithRectBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)rescaleImageToSizeBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)rescaleImageToPXBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)getTiledImageWithSizeBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)imageFromViewBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mergeImageWithimageBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
