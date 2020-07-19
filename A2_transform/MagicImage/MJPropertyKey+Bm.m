#import "MJPropertyKey+Bm.h"
@implementation MJPropertyKey (Bm)
+ (BOOL)valueInObjectBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
