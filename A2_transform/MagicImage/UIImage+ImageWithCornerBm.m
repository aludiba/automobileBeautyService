#import "UIImage+ImageWithCornerBm.h"
@implementation UIImage (ImageWithCornerBm)
+ (BOOL)imageWithConrnerWithRadiusSizetofitBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
