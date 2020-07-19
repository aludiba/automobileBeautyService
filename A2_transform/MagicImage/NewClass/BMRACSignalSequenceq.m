#import "BMRACSignalSequenceq.h"
@implementation BMRACSignalSequenceq
+ (BOOL)nSequencewithsignal:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ohead:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)Ytail:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)darray:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)kdescription:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
