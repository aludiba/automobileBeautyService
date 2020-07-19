#import "BMRACTupleb+Bm.h"
@implementation BMRACTupleb (Bm)
+ (BOOL)jrac_sequenceBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
