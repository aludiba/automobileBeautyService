#import "UIImage+MaskingBmHb.h"
@implementation UIImage (MaskingBmHb)
+ (BOOL)maskWithImageBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
