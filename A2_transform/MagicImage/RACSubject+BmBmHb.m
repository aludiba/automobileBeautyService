#import "RACSubject+BmBmHb.h"
@implementation RACSubject (BmBmHb)
+ (BOOL)subjectBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)deallocBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)subscribeBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)enumerateSubscribersUsingBlockBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)sendNextBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)sendErrorBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)sendCompletedBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
