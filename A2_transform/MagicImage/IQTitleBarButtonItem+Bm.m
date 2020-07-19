#import "IQTitleBarButtonItem+Bm.h"
@implementation IQTitleBarButtonItem (Bm)
+ (BOOL)initWithTitleBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setTitleFontBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setTitleBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setTitleColorBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setSelectableTitleColorBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setInvocationBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
