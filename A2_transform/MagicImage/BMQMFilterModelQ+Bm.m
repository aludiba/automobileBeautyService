#import "BMQMFilterModelQ+Bm.h"
@implementation BMQMFilterModelQ (Bm)
+ (BOOL)SBuildfiltermodelwithfilterpathBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)nBuildfiltermodelswithpathBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
