#import "BMBMRACStringSequenceJz+Bm.h"
@implementation BMBMRACStringSequenceJz (Bm)
+ (BOOL)SQsequencewithstringtoffsetBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)cAheadBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)IBtailBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)oJarrayBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)sSdescriptionBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
