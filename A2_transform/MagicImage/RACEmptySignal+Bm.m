#import "RACEmptySignal+Bm.h"
@implementation RACEmptySignal (Bm)
+ (BOOL)setNameBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)nameBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)emptyBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
