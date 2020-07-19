#import "BMNSBundleB.h"
@implementation BMNSBundleB
+ (BOOL)IMj_Refreshbundlebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)TMj_Arrowimagebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)KMj_Localizedstringforkeybm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)aMj_Localizedstringforkeyvaluebm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
