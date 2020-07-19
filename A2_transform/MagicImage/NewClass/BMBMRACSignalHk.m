#import "BMBMRACSignalHk.h"
@implementation BMBMRACSignalHk
+ (BOOL)JUlogallbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)OOlognextbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)NYlogerrorbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)kWlogcompletedbm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
