#import "UIImage+GIFBmBm.h"
@implementation UIImage (GIFBmBm)
+ (BOOL)sd_animatedGIFWithDataBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)isGIFBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
