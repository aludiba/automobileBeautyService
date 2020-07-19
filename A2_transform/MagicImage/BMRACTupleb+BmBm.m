#import "BMRACTupleb+BmBm.h"
@implementation BMRACTupleb (BmBm)
+ (BOOL)jrac_sequenceBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
