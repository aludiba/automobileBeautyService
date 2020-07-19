#import "RACSignal+RACStreamBmBmBm.h"
@implementation RACSignal (RACStreamBmBmBm)
+ (BOOL)emptyBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)returnBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)bindBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)concatBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)zipWithBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
