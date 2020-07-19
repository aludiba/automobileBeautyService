#import "UIImage+DrawImageBm.h"
@implementation UIImage (DrawImageBm)
+ (BOOL)imageWithSubImageFrameBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)imageMosaicWithSubImageFrameBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)imageWithTransformDrawmodeBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
