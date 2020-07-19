#import "RACEmptySignal+BmBm.h"
@implementation RACEmptySignal (BmBm)
+ (BOOL)setNameBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)nameBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)emptyBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
