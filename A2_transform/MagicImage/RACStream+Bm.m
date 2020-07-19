#import "RACStream+Bm.h"
@implementation RACStream (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)emptyBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)bindBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)returnBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)concatBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)zipWithBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setNameWithFormatBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
