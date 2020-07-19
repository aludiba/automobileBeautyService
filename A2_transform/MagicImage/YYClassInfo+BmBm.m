#import "YYClassInfo+BmBm.h"
@implementation YYClassInfo (BmBm)
+ (BOOL)initWithClassBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)_updateBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setNeedUpdateBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)needUpdateBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)classInfoWithClassBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)classInfoWithClassNameBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
