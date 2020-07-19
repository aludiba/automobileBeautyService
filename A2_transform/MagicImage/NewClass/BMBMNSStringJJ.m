#import "BMBMNSStringJJ.h"
@implementation BMBMNSStringJJ
+ (BOOL)fXmj_Underlinefromcamel:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)LQmj_Camelfromunderline:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)HAmj_Firstcharlower:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)YTmj_Firstcharupper:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)JXmj_Ispureint:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)FEmj_Url:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
