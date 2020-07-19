#import "NSObject+RACKVOWrapperHb.h"
@implementation NSObject (RACKVOWrapperHb)
+ (BOOL)rac_observeKeyPathOptionsObserverBlockHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
