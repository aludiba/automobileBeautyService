#import "UIImage+HandlerBm.h"
@implementation UIImage (HandlerBm)
+ (BOOL)fixOrientationBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)imageAtRectBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
