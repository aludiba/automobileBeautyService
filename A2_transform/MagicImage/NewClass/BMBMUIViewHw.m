#import "BMBMUIViewHw.h"
@implementation BMBMUIViewHw
+ (BOOL)wLsetkeyboarddistancefromtextfield:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)jYkeyboarddistancefromtextfield:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)OFsetignoreswitchingbynextprevious:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ZOignoreswitchingbynextprevious:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)jTsetenablemode:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)cPenablemode:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)eLsetshouldresignontouchoutsidemode:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)CSshouldresignontouchoutsidemode:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
