#import "SDPieProgressView+Bm.h"
@implementation SDPieProgressView (Bm)
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
