#import "BMBMRACSignaljj.h"
@implementation BMBMRACSignaljj
+ (BOOL)NOemptybm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)SNreturnbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)IRbindbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)UZconcatbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)eHzipwithbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
