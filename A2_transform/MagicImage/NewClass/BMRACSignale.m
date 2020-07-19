#import "BMRACSignale.h"
@implementation BMRACSignale
+ (BOOL)VAsynchronousfirstordefaultsuccesserrorbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)VAsynchronousfirstordefaultsuccesserrortimeoutbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)xAsynchronouslywaituntilcompletedtimeoutbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)iAsynchronouslywaituntilcompletedbm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
