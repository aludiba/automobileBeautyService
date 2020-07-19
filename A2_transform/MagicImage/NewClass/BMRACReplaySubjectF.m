#import "BMRACReplaySubjectF.h"
@implementation BMRACReplaySubjectF
+ (BOOL)yReplaysubjectwithcapacitybm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)YInitbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)QInitwithcapacitybm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)dSubscribebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)pSendnextbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)LSendcompletedbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)SSenderrorbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
