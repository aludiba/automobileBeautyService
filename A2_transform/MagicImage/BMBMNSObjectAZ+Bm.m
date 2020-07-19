#import "BMBMNSObjectAZ+Bm.h"
@implementation BMBMNSObjectAZ (Bm)
+ (BOOL)OMrac_SignalforselectorbmbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)RRrac_SignalforselectorfromprotocolbmbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
