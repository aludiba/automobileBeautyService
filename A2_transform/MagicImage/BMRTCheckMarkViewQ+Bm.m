#import "BMRTCheckMarkViewQ+Bm.h"
@implementation BMRTCheckMarkViewQ (Bm)
+ (BOOL)oawakeFromNibBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)QDrawrectBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
