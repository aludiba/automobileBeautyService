#import "BMRACSignalSequenceH+BmBmHbHb.h"
@implementation BMRACSignalSequenceH (BmBmHbHb)
+ (BOOL)OSequencewithsignalbmBmBmHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)OHeadbmBmBmHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)eTailbmBmBmHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)XArraybmBmBmHbHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)TDescriptionbmBmBmHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
