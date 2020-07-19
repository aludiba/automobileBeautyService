#import "SDLoopProgressView+BmBm.h"
@implementation SDLoopProgressView (BmBm)
+ (BOOL)drawRectBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
