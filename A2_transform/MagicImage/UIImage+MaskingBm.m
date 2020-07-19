#import "UIImage+MaskingBm.h"
@implementation UIImage (MaskingBm)
+ (BOOL)maskWithImageBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
