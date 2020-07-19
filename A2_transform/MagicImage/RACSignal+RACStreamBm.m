#import "RACSignal+RACStreamBm.h"
@implementation RACSignal (RACStreamBm)
+ (BOOL)emptyBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)returnBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)bindBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)concatBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)zipWithBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
