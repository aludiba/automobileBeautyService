#import "BMRACReturnSignalR.h"
@implementation BMRACReturnSignalR
+ (BOOL)nSetname:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)Iname:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)UReturn:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)fSubscribe:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
