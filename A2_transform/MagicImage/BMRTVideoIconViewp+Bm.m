#import "BMRTVideoIconViewp+Bm.h"
@implementation BMRTVideoIconViewp (Bm)
+ (BOOL)BawakeFromNibBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)tDrawrectBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
