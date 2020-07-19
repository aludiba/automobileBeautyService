#import "RACReturnSignal+Bm.h"
@implementation RACReturnSignal (Bm)
+ (BOOL)setNameBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)nameBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)returnBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
