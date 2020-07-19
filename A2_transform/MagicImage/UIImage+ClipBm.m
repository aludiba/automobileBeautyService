#import "UIImage+ClipBm.h"
@implementation UIImage (ClipBm)
+ (BOOL)clipImageCgblendmodeBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)clipImageWithrectBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)clipImageWithratioBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)getImageMaskBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)getImageWithViewRectScaleBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)getCircleImageWithparamBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)cropImageFrameAngleCircularclipBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
