#import "IQTitleBarButtonItem+BmBmHb.h"
@implementation IQTitleBarButtonItem (BmBmHb)
+ (BOOL)initWithTitleBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setTitleFontBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setTitleBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setTitleColorBmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setSelectableTitleColorBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setInvocationBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)deallocBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
