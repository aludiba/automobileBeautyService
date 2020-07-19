#import "BMRACBehaviorSubjectp.h"
@implementation BMRACBehaviorSubjectp
+ (BOOL)ABehaviorsubjectwithdefaultvalue:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)GSubscribe:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)CSendnext:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
