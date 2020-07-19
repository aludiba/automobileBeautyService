#import "IQBarButtonItemConfiguration+BmHb.h"
@implementation IQBarButtonItemConfiguration (BmHb)
+ (BOOL)initWithBarButtonSystemItemActionBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)initWithImageActionBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)initWithTitleActionBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
