#import "IQBarButtonItem+Bm.h"
@implementation IQBarButtonItem (Bm)
+ (BOOL)initializeBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setTintColorBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)initWithBarButtonSystemItemTargetActionBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setTargetActionBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
