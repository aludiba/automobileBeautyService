#import "RACStream+BmBmBm.h"
@implementation RACStream (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)emptyBmBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)bindBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)returnBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)concatBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)zipWithBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setNameWithFormatBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
