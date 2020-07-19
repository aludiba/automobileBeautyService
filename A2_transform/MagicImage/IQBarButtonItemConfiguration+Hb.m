#import "IQBarButtonItemConfiguration+Hb.h"
@implementation IQBarButtonItemConfiguration (Hb)
+ (BOOL)initWithBarButtonSystemItemActionHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)initWithImageActionHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)initWithTitleActionHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
