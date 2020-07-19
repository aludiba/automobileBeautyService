#import "BMBMUIRefreshControlHT+Bm.h"
@implementation BMBMUIRefreshControlHT (Bm)
+ (BOOL)CTrac_CommandBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)nSsetrac_CommandBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
