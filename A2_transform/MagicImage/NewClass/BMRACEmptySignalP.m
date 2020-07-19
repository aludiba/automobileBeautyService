#import "BMRACEmptySignalP.h"
@implementation BMRACEmptySignalP
+ (BOOL)aSetnamebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)CNamebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)AEmptybm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sSubscribebm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
