#import "BMRACStringSequenceJ.h"
@implementation BMRACStringSequenceJ
+ (BOOL)QSequencewithstringTOffset:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)Ahead:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)btail:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)jarray:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)Sdescription:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
