#import "RACReturnSignal+BmBm.h"
@implementation RACReturnSignal (BmBm)
+ (BOOL)setNameBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)nameBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)returnBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
