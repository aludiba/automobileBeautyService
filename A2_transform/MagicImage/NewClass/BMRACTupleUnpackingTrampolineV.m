#import "BMRACTupleUnpackingTrampolineV.h"
@implementation BMRACTupleUnpackingTrampolineV
+ (BOOL)hTrampolinebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)kSetobjectforkeyedsubscriptbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
