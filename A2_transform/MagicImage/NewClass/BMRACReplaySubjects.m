#import "BMRACReplaySubjects.h"
@implementation BMRACReplaySubjects
+ (BOOL)KReplaysubjectwithcapacity:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)Iinit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)SInitwithcapacity:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)HSubscribe:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mSendnext:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)XsendCompleted:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ESenderror:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
