#import "BMSDTransparentPieProgressViewi+Bm.h"
@implementation BMSDTransparentPieProgressViewi (Bm)
+ (BOOL)PInitwithframeBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)WDrawrectBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
