#import "UIImage+BlurBmBm.h"
@implementation UIImage (BlurBmBm)
+ (BOOL)blurryImageWithLevelBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
