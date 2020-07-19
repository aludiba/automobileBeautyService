#import "BMBMSDWebImageTransitionAQ.h"
@implementation BMBMSDWebImageTransitionAQ
+ (BOOL)MVfadetransition:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)rAflipfromlefttransition:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)XSflipfromrighttransition:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)EGflipfromtoptransition:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)OVflipfrombottomtransition:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)wGcurluptransition:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)tGcurldowntransition:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
