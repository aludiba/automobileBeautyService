#import "RACChannel+BmBmBm.h"
@implementation RACChannel (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
