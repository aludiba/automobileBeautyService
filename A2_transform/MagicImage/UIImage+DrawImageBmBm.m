#import "UIImage+DrawImageBmBm.h"
@implementation UIImage (DrawImageBmBm)
+ (BOOL)imageWithSubImageFrameBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)imageMosaicWithSubImageFrameBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)imageWithTransformDrawmodeBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
