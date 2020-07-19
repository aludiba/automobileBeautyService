#import "UIImage+HandlerBmHb.h"
@implementation UIImage (HandlerBmHb)
+ (BOOL)fixOrientationBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)imageAtRectBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
