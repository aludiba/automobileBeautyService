#import "RACEmptySignal+BmBmBm.h"
@implementation RACEmptySignal (BmBmBm)
+ (BOOL)setNameBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)nameBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)emptyBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
