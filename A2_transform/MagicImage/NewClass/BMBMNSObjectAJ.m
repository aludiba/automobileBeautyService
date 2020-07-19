#import "BMBMNSObjectAJ.h"
@implementation BMBMNSObjectAJ
+ (BOOL)EMrac_Signalforselectorbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)MRrac_Signalforselectorfromprotocolbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
