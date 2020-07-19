#import "BMRACSignale+Bm.h"
@implementation BMRACSignale (Bm)
+ (BOOL)VAsynchronousfirstordefaultsuccesserrorbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)VAsynchronousfirstordefaultsuccesserrortimeoutbmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)xAsynchronouslywaituntilcompletedtimeoutbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)iAsynchronouslywaituntilcompletedbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
