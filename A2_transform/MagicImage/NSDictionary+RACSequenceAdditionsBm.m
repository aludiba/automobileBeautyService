#import "NSDictionary+RACSequenceAdditionsBm.h"
@implementation NSDictionary (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)rac_keySequenceBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rac_valueSequenceBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
