#import "BMBMUIBarButtonItemBn.h"
@implementation BMBMUIBarButtonItemBn
+ (BOOL)FWsetactionblock:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)CActionblock:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
