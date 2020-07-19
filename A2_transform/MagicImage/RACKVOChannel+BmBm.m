#import "RACKVOChannel+BmBm.h"
@implementation RACKVOChannel (BmBm)
+ (BOOL)currentThreadDataBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)initWithTargetKeypathNilvalueBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)createCurrentThreadDataBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)destroyCurrentThreadDataBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
