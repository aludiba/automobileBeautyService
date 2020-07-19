#import "BMRACTupleSequenceD+Bm.h"
@implementation BMRACTupleSequenceD (Bm)
+ (BOOL)kSequencewithtuplebackingarrayCOffsetBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)YheadBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)dtailBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)VarrayBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)OdescriptionBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
