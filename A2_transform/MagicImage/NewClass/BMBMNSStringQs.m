#import "BMBMNSStringQs.h"
@implementation BMBMNSStringQs
+ (BOOL)LRrac_Keypathcomponents:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)DLrac_Keypathbydeletinglastkeypathcomponent:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)AQrac_Keypathbydeletingfirstkeypathcomponent:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
