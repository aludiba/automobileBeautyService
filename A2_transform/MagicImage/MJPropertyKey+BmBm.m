#import "MJPropertyKey+BmBm.h"
@implementation MJPropertyKey (BmBm)
+ (BOOL)valueInObjectBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
