#import "UIImage+MaskingBmBm.h"
@implementation UIImage (MaskingBmBm)
+ (BOOL)maskWithImageBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
