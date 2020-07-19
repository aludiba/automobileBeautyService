#import "BMUIScrollViewy+Bm.h"
@implementation BMUIScrollViewy (Bm)
+ (BOOL)ESetupautocontentsizewithbottomviewFBottommarginBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ASetupautocontentsizewithrightviewuRightmarginBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
