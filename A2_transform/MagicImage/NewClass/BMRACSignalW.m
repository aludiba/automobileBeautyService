#import "BMRACSignalW.h"
@implementation BMRACSignalW
+ (BOOL)kLogallbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)XLognextbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)zLogerrorbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)SLogcompletedbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
