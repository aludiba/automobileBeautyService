#import "BMNSObjectO.h"
@implementation BMNSObjectO
+ (BOOL)KRac_Liftselectorwithsignalofargumentsbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)kRac_Liftselectorwithsignalsfromarraybmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZRac_Liftselectorwithsignalsbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
