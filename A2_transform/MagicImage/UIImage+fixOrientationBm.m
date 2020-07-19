#import "UIImage+fixOrientationBm.h"
@implementation UIImage (fixOrientationBm)
+ (BOOL)fixOrientationBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
