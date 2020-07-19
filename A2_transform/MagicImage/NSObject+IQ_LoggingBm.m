#import "NSObject+IQ_LoggingBm.h"
@implementation NSObject (IQ_LoggingBm)
+ (BOOL)_IQDescriptionBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
