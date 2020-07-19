#import "RACSignal+RACStreamBmBm.h"
@implementation RACSignal (RACStreamBmBm)
+ (BOOL)emptyBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)returnBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)bindBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)concatBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)zipWithBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
