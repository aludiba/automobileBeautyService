#import "BMUIRefreshControll.h"
@implementation BMUIRefreshControll
+ (BOOL)ERac_Commandbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)sSetrac_Commandbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
