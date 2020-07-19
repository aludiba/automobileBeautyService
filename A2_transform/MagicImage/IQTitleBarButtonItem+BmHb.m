#import "IQTitleBarButtonItem+BmHb.h"
@implementation IQTitleBarButtonItem (BmHb)
+ (BOOL)initWithTitleBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setTitleFontBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setTitleBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setTitleColorBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setSelectableTitleColorBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setInvocationBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)deallocBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
