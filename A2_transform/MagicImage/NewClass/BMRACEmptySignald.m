#import "BMRACEmptySignald.h"
@implementation BMRACEmptySignald
+ (BOOL)iSetnamebmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)uNamebmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)qEmptybmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)ISubscribebmbm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
