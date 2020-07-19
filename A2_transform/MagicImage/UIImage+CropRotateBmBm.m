#import "UIImage+CropRotateBmBm.h"
@implementation UIImage (CropRotateBmBm)
+ (BOOL)hasAlphaBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)croppedImageWithFrameAngleCircularclipBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
