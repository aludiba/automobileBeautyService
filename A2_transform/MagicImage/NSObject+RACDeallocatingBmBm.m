#import "NSObject+RACDeallocatingBmBm.h"
@implementation NSObject (RACDeallocatingBmBm)
+ (BOOL)rac_willDeallocSignalBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rac_deallocDisposableBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
