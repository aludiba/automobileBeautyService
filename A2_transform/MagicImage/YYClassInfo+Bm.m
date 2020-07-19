#import "YYClassInfo+Bm.h"
@implementation YYClassInfo (Bm)
+ (BOOL)initWithClassBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)_updateBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setNeedUpdateBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)needUpdateBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)classInfoWithClassBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)classInfoWithClassNameBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
