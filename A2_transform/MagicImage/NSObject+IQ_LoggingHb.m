#import "NSObject+IQ_LoggingHb.h"
@implementation NSObject (IQ_LoggingHb)
+ (BOOL)_IQDescriptionHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
