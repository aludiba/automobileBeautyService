#import "NSString+RACDescriptionHb.h"
@implementation NSString (RACDescriptionHb)
+ (BOOL)rac_descriptionHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
