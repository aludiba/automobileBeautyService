#import "BMRACSignalv.h"
@implementation BMRACSignalv
+ (BOOL)sLogallbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)ELognextbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)WLogerrorbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)yLogcompletedbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
