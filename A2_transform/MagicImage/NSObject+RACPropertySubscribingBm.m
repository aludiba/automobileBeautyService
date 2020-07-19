#import "NSObject+RACPropertySubscribingBm.h"
@implementation NSObject (RACPropertySubscribingBm)
+ (BOOL)rac_valuesForKeyPathObserverBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserverBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
