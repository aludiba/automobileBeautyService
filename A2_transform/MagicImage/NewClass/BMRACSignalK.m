#import "BMRACSignalK.h"
@implementation BMRACSignalK
+ (BOOL)oEmptybm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)DReturnbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ZBindbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)GConcatbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)DZipwithbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
