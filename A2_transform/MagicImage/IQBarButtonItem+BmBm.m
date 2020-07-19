#import "IQBarButtonItem+BmBm.h"
@implementation IQBarButtonItem (BmBm)
+ (BOOL)initializeBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setTintColorBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)initWithBarButtonSystemItemTargetActionBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setTargetActionBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
