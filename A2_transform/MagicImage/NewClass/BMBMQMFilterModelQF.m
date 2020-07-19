#import "BMBMQMFilterModelQF.h"
@implementation BMBMQMFilterModelQF
+ (BOOL)BSbuildfiltermodelwithfilterpath:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)rNbuildfiltermodelswithpath:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
