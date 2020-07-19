#import "BMRACThreeTupleN.h"
@implementation BMRACThreeTupleN
+ (BOOL)Hinit:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)yInitwithbackingarray:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)WTuplebyaddingobject:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ZPackOFirstsSecond:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)hIsequal:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
