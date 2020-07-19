#import "BMRACTuplex.h"
@implementation BMRACTuplex
+ (BOOL)mRac_Sequencebm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
