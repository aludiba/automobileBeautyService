#import "BMUIScrollViewU.h"
@implementation BMUIScrollViewU
+ (BOOL)fSetupautocontentsizewithbottomviewbottommarginbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)dSetupautocontentsizewithrightviewrightmarginbm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
