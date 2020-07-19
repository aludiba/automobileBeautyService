#import "UIImage+HandlerBmBm.h"
@implementation UIImage (HandlerBmBm)
+ (BOOL)fixOrientationBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)imageAtRectBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
