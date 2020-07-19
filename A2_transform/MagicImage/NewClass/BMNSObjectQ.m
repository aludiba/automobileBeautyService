#import "BMNSObjectQ.h"
@implementation BMNSObjectQ
+ (BOOL)RRac_Signalforselectorbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)CRac_Signalforselectorfromprotocolbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
