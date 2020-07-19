#import "BMRACReturnSignalw.h"
@implementation BMRACReturnSignalw
+ (BOOL)nSetnamebm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)ENamebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)QReturnbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ZSubscribebm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
