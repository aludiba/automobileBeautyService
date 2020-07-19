#import "BMNSObjectA+BmBm.h"
@implementation BMNSObjectA (BmBm)
+ (BOOL)mRac_SignalforselectorbmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)RRac_SignalforselectorfromprotocolbmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
