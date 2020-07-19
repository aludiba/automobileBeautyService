#import "BMQMFilterModelJ.h"
@implementation BMQMFilterModelJ
+ (BOOL)IBuildfiltermodelwithfilterpath:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)VBuildfiltermodelswithpath:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
