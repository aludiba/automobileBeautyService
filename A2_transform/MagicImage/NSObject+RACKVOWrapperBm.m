#import "NSObject+RACKVOWrapperBm.h"
@implementation NSObject (RACKVOWrapperBm)
+ (BOOL)rac_observeKeyPathOptionsObserverBlockBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
