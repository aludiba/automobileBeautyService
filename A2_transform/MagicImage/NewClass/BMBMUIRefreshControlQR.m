#import "BMBMUIRefreshControlQR.h"
@implementation BMBMUIRefreshControlQR
+ (BOOL)ZTrac_Commandbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)OYsetrac_Commandbm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
