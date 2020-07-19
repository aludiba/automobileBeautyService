#import "RACStream+BmBm.h"
@implementation RACStream (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)emptyBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)bindBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)returnBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)concatBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)zipWithBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setNameWithFormatBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
