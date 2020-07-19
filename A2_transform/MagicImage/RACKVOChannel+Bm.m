#import "RACKVOChannel+Bm.h"
@implementation RACKVOChannel (Bm)
+ (BOOL)currentThreadDataBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)initWithTargetKeypathNilvalueBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)createCurrentThreadDataBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)destroyCurrentThreadDataBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
