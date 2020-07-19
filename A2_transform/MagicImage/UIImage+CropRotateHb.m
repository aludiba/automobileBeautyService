#import "UIImage+CropRotateHb.h"
@implementation UIImage (CropRotateHb)
+ (BOOL)hasAlphaHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)croppedImageWithFrameAngleCircularclipHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
