#import "BMNSObjectJ+Bm.h"
@implementation BMNSObjectJ (Bm)
+ (BOOL)BRac_SignalforselectorbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)gRac_SignalforselectorfromprotocolbmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
