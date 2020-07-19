#import "UIImage+GIFBm.h"
@implementation UIImage (GIFBm)
+ (BOOL)sd_animatedGIFWithDataBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)isGIFBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
