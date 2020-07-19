#import "RACReturnSignal+BmBmBm.h"
@implementation RACReturnSignal (BmBmBm)
+ (BOOL)setNameBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)nameBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)returnBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
