#import "UIImage+AlphaBmHb.h"
@implementation UIImage (AlphaBmHb)
+ (BOOL)ARGBDataBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)isPointTransparentBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)hasAlphaBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)imageWithAlphaBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)transparentBorderImageBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)newBorderMaskSizeBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
