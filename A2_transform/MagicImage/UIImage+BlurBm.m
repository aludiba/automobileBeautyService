#import "UIImage+BlurBm.h"
@implementation UIImage (BlurBm)
+ (BOOL)blurryImageWithLevelBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
