#import "TADotView+Bm.h"
@implementation TADotView (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)initializationBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)changeActivityStateBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
