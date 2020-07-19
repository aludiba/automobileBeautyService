#import "UIImage+fixOrientationBmBm.h"
@implementation UIImage (fixOrientationBmBm)
+ (BOOL)fixOrientationBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
