#import "BMBMRACReturnSignalRW.h"
@implementation BMBMRACReturnSignalRW
+ (BOOL)zNsetname:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)FIname:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)GUreturn:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)iFsubscribe:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
