#import "SDBallProgressView+Bm.h"
@implementation SDBallProgressView (Bm)
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
