#import "BMBMNSObjectJL.h"
@implementation BMBMNSObjectJL
+ (BOOL)zBrac_Signalforselectorbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)KGrac_Signalforselectorfromprotocolbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
