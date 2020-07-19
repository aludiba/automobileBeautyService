#import "NSValue+RACDescriptionHb.h"
@implementation NSValue (RACDescriptionHb)
+ (BOOL)rac_descriptionHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
