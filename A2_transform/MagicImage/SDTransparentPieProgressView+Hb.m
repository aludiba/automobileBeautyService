#import "SDTransparentPieProgressView+Hb.h"
@implementation SDTransparentPieProgressView (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)drawRectHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
