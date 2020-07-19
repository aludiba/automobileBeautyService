#import "BMNSThreadl.h"
@implementation BMNSThreadl
+ (BOOL)DAddautoreleasepooltocurrentrunloopbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
