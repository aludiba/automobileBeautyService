#import "NSString+RACSequenceAdditionsBm.h"
@implementation NSString (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
