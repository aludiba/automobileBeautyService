#import "BMRACSignalSequenceH.h"
@implementation BMRACSignalSequenceH
+ (BOOL)OSequencewithsignalbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)OHeadbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)eTailbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)XArraybm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)TDescriptionbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
