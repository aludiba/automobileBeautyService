#import "UIImage+ClipBmBm.h"
@implementation UIImage (ClipBmBm)
+ (BOOL)clipImageCgblendmodeBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)clipImageWithrectBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)clipImageWithratioBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)getImageMaskBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)getImageWithViewRectScaleBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)getCircleImageWithparamBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cropImageFrameAngleCircularclipBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
