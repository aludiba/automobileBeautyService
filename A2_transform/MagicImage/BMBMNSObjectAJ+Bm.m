#import "BMBMNSObjectAJ+Bm.h"
@implementation BMBMNSObjectAJ (Bm)
+ (BOOL)EMrac_SignalforselectorbmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)MRrac_SignalforselectorfromprotocolbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
