#import "BMBMNSInvocationIS.h"
@implementation BMBMNSInvocationIS
+ (BOOL)QUrac_Setargumentnatindex:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)HCrac_Argumentatindex:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)bRrac_Argumentstuple:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)cHsetrac_Argumentstuple:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZIrac_Returnvalue:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
