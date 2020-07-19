#import "TADotView+BmBm.h"
@implementation TADotView (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initializationBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)changeActivityStateBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
