#import "BMBMNSObjectQi.h"
@implementation BMBMNSObjectQi
+ (BOOL)eRrac_Signalforselectorbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)JCrac_Signalforselectorfromprotocolbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
