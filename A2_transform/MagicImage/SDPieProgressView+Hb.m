#import "SDPieProgressView+Hb.h"
@implementation SDPieProgressView (Hb)
+ (BOOL)drawRectHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
