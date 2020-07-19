#import "BMRACTupleSequenceJ.h"
@implementation BMRACTupleSequenceJ
+ (BOOL)VSequencewithtuplebackingarrayoffsetbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)AHeadbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)aTailbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)oArraybm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)iDescriptionbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
