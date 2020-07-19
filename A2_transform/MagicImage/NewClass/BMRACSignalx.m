#import "BMRACSignalx.h"
@implementation BMRACSignalx
+ (BOOL)VEmptybmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)TReturnbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)YBindbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)LConcatbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)DZipwithbmbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
