#import "SDPieProgressView+BmBm.h"
@implementation SDPieProgressView (BmBm)
+ (BOOL)drawRectBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
