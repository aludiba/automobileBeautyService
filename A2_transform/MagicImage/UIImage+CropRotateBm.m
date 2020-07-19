#import "UIImage+CropRotateBm.h"
@implementation UIImage (CropRotateBm)
+ (BOOL)hasAlphaBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)croppedImageWithFrameAngleCircularclipBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
