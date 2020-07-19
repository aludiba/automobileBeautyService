#import "NSObject+RACPropertySubscribingBmBm.h"
@implementation NSObject (RACPropertySubscribingBmBm)
+ (BOOL)rac_valuesForKeyPathObserverBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserverBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
