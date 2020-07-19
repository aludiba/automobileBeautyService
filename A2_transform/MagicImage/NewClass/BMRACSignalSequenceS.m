#import "BMRACSignalSequenceS.h"
@implementation BMRACSignalSequenceS
+ (BOOL)OSequencewithsignalbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)OHeadbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)QTailbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)zArraybm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)EDescriptionbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
