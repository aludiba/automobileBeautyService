#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "NSArray+MASAdditions.h"
#import "View+MASAdditions.h"
#import "NSArray+MASAdditionsHb.h"

@interface NSArray (MASAdditionsHbHb)
+ (BOOL)mas_makeConstraintsHbHb:(NSInteger)hb;
+ (BOOL)mas_updateConstraintsHbHb:(NSInteger)hb;
+ (BOOL)mas_remakeConstraintsHbHb:(NSInteger)hb;
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingHbHb:(NSInteger)hb;
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingHbHb:(NSInteger)hb;
+ (BOOL)mas_commonSuperviewOfViewsHbHb:(NSInteger)hb;

@end
