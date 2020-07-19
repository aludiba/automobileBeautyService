#import "BMRACSignalH.h"
@implementation BMRACSignalH
+ (BOOL)ULogallbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)oLognextbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YLogerrorbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)WLogcompletedbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
