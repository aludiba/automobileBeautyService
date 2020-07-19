#import "BMBKMIHomeViewb.h"
@implementation BMBKMIHomeViewb
+ (BOOL)eInitwithframe:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)IBktap:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
