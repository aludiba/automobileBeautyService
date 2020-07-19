#import "BMRACStringSequenceJ+Bm.h"
@implementation BMRACStringSequenceJ (Bm)
+ (BOOL)QSequencewithstringTOffsetBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)AheadBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)btailBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)jarrayBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)SdescriptionBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
