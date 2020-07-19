#import "BMRACBehaviorSubjectp+BmHb.h"
@implementation BMRACBehaviorSubjectp (BmHb)
+ (BOOL)ABehaviorsubjectwithdefaultvalueBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)GSubscribeBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)CSendnextBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
