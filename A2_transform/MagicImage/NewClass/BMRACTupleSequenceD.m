#import "BMRACTupleSequenceD.h"
@implementation BMRACTupleSequenceD
+ (BOOL)kSequencewithtuplebackingarrayCOffset:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)Yhead:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dtail:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)Varray:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)Odescription:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
