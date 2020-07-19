#import "BMRACDynamicSignalj.h"
@implementation BMRACDynamicSignalj
+ (BOOL)LCreatesignalbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)SSubscribebmbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
