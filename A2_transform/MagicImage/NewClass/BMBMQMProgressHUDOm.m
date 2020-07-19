#import "BMBMQMProgressHUDOm.h"
@implementation BMBMQMProgressHUDOm
+ (BOOL)zTshow:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)OAhide:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
