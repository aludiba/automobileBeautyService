#import "BMBMNSFileHandleeD+Bm.h"
@implementation BMBMNSFileHandleeD (Bm)
+ (BOOL)eNrac_ReadinbackgroundBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
