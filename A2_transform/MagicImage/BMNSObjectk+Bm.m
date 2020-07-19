#import "BMNSObjectk+Bm.h"
@implementation BMNSObjectk (Bm)
+ (BOOL)JRac_SignalforselectorBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)WRac_SignalforselectorQFromprotocolBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
