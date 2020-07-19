#import "BMBMBMNSObjectAZM.h"
@implementation BMBMBMNSObjectAZM
+ (BOOL)NOmrac_Signalforselectorbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)FRrrac_Signalforselectorfromprotocolbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
