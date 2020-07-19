#import "BMRACSignalSequenceP.h"
@implementation BMRACSignalSequenceP
+ (BOOL)QSequencewithsignal:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)ahead:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)Btail:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)Darray:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)Gdescription:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
