#import "BMBMUIRefreshControlHT.h"
@implementation BMBMUIRefreshControlHT
+ (BOOL)CTrac_Command:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)nSsetrac_Command:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
