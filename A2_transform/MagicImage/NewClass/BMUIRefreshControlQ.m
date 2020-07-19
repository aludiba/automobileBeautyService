#import "BMUIRefreshControlQ.h"
@implementation BMUIRefreshControlQ
+ (BOOL)tRac_Commandbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ySetrac_Commandbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
