#import "SDPieProgressView+BmHb.h"
@implementation SDPieProgressView (BmHb)
+ (BOOL)drawRectBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
