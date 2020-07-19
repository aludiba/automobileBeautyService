#import "UIImage+ImageWithCornerBmBm.h"
@implementation UIImage (ImageWithCornerBmBm)
+ (BOOL)imageWithConrnerWithRadiusSizetofitBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
