#import "IQBarButtonItemConfiguration+BmHbHb.h"
@implementation IQBarButtonItemConfiguration (BmHbHb)
+ (BOOL)initWithBarButtonSystemItemActionBmHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)initWithImageActionBmHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)initWithTitleActionBmHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
