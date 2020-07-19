#import "NSObject+RACDeallocatingBm.h"
@implementation NSObject (RACDeallocatingBm)
+ (BOOL)rac_willDeallocSignalBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rac_deallocDisposableBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
