#import "IQBarButtonItemConfiguration+Bm.h"
@implementation IQBarButtonItemConfiguration (Bm)
+ (BOOL)initWithBarButtonSystemItemActionBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initWithImageActionBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)initWithTitleActionBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
