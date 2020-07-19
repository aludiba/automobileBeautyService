#import "BMUIRefreshControld.h"
@implementation BMUIRefreshControld
+ (BOOL)oRac_Commandbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)USetrac_Commandbmbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
