#import "UIImage+animatedGIFBm.h"
@implementation UIImage (animatedGIFBm)
+ (BOOL)animatedImageWithAnimatedGIFDataBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)animatedImageWithAnimatedGIFURLBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
