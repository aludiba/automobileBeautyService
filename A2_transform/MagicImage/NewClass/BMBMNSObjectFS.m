#import "BMBMNSObjectFS.h"
@implementation BMBMNSObjectFS
+ (BOOL)kTarcdebugretainbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)DGarcdebugreleasebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)hDarcdebugautoreleasebm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)nOarcdebugretaincountbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
