#import "IQBarButtonItemConfiguration+BmBmBm.h"
@implementation IQBarButtonItemConfiguration (BmBmBm)
+ (BOOL)initWithBarButtonSystemItemActionBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)initWithImageActionBmBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithTitleActionBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
