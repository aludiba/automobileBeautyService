#import "BMBMNSObjectAZ.h"
@implementation BMBMNSObjectAZ
+ (BOOL)OMrac_Signalforselectorbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)RRrac_Signalforselectorfromprotocolbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
