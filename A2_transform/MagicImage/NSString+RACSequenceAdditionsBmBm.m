#import "NSString+RACSequenceAdditionsBmBm.h"
@implementation NSString (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
