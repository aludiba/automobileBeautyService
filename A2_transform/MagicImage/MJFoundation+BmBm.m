#import "MJFoundation+BmBm.h"
@implementation MJFoundation (BmBm)
+ (BOOL)isClassFromFoundationBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
