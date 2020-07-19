#import "BMBMNSStringQs+Bm.h"
@implementation BMBMNSStringQs (Bm)
+ (BOOL)LRrac_KeypathcomponentsBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)DLrac_KeypathbydeletinglastkeypathcomponentBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)AQrac_KeypathbydeletingfirstkeypathcomponentBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
