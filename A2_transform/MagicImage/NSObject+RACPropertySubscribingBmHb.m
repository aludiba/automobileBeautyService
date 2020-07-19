#import "NSObject+RACPropertySubscribingBmHb.h"
@implementation NSObject (RACPropertySubscribingBmHb)
+ (BOOL)rac_valuesForKeyPathObserverBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserverBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
