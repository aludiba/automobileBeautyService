#import "UIImage+BoxBlurBm.h"
@implementation UIImage (BoxBlurBm)
+ (BOOL)blurryImageWithblurlevelBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)drn_boxblurImageWithBlurBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
