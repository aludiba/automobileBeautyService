#import "UIImage+ForceDecodeBm.h"
@implementation UIImage (ForceDecodeBm)
+ (BOOL)decodedImageWithImageBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)decodedAndScaledDownImageWithImageBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
