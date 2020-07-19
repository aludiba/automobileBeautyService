#import "NSDictionary+RACSequenceAdditionsBmBm.h"
@implementation NSDictionary (RACSequenceAdditionsBmBm)
+ (BOOL)rac_sequenceBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)rac_keySequenceBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)rac_valueSequenceBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
