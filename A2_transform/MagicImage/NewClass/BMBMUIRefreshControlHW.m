#import "BMBMUIRefreshControlHW.h"
@implementation BMBMUIRefreshControlHW
+ (BOOL)qTrac_Command:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)hSsetrac_Command:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
