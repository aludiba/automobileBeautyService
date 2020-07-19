#import "IQTitleBarButtonItem+BmBm.h"
@implementation IQTitleBarButtonItem (BmBm)
+ (BOOL)initWithTitleBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setTitleFontBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setTitleBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setTitleColorBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setSelectableTitleColorBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setInvocationBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
