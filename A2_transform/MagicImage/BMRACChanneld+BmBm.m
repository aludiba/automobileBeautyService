#import "BMRACChanneld+BmBm.h"
@implementation BMRACChanneld (BmBm)
+ (BOOL)ZinitBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
