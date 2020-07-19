#import "IQBarButtonItemConfiguration+BmBm.h"
@implementation IQBarButtonItemConfiguration (BmBm)
+ (BOOL)initWithBarButtonSystemItemActionBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)initWithImageActionBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithTitleActionBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
