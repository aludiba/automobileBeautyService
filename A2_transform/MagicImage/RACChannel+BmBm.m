#import "RACChannel+BmBm.h"
@implementation RACChannel (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
