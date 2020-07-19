#import "BMRACEmptySignalL.h"
@implementation BMRACEmptySignalL
+ (BOOL)fSetname:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)Fname:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)aempty:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)DSubscribe:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
