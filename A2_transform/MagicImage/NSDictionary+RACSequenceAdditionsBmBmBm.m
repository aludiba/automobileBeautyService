#import "NSDictionary+RACSequenceAdditionsBmBmBm.h"
@implementation NSDictionary (RACSequenceAdditionsBmBmBm)
+ (BOOL)rac_sequenceBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)rac_keySequenceBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)rac_valueSequenceBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
