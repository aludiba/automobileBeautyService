#import "BMRACFourTupler.h"
@implementation BMRACFourTupler
+ (BOOL)ginit:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)PInitwithbackingarray:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VTuplebyaddingobject:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)rPackxFirstLSecondRThird:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)wIsequal:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
