#import "BMQMFilterModelQ.h"
@implementation BMQMFilterModelQ
+ (BOOL)SBuildfiltermodelwithfilterpath:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)nBuildfiltermodelswithpath:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
