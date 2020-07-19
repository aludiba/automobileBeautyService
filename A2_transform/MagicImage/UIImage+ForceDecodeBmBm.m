#import "UIImage+ForceDecodeBmBm.h"
@implementation UIImage (ForceDecodeBmBm)
+ (BOOL)decodedImageWithImageBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)decodedAndScaledDownImageWithImageBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
