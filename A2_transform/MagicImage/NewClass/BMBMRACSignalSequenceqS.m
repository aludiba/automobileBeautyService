#import "BMBMRACSignalSequenceqS.h"
@implementation BMBMRACSignalSequenceqS
+ (BOOL)lNsequencewithsignal:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)YOhead:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)OYtail:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)CDarray:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)GKdescription:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
