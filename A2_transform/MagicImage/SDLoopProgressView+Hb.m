#import "SDLoopProgressView+Hb.h"
@implementation SDLoopProgressView (Hb)
+ (BOOL)drawRectHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
