#import "RACChannel+Bm.h"
@implementation RACChannel (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
