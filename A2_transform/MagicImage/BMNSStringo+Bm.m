#import "BMNSStringo+Bm.h"
@implementation BMNSStringo (Bm)
+ (BOOL)CRac_KeypathcomponentsbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)LRac_KeypathbydeletinglastkeypathcomponentbmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zRac_KeypathbydeletingfirstkeypathcomponentbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
