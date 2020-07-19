#import "BMNSObjectF+Bm.h"
@implementation BMNSObjectF (Bm)
+ (BOOL)TArcdebugretainbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)GArcdebugreleasebmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)dArcdebugautoreleasebmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)oArcdebugretaincountbmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
