#import "BMNSBundleE.h"
@implementation BMNSBundleE
+ (BOOL)Wmj_refreshBundle:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zmj_arrowImage:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)DMj_Localizedstringforkey:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)NMj_LocalizedstringforkeyUValue:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
