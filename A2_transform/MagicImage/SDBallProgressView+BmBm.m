#import "SDBallProgressView+BmBm.h"
@implementation SDBallProgressView (BmBm)
+ (BOOL)drawRectBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
