#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "NSArray+MASAdditions.h"
#import "View+MASAdditions.h"

@interface NSArray (MASAdditionsHb)
+ (BOOL)mas_makeConstraintsHb:(NSInteger)hb;
+ (BOOL)mas_updateConstraintsHb:(NSInteger)hb;
+ (BOOL)mas_remakeConstraintsHb:(NSInteger)hb;
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingHb:(NSInteger)hb;
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingHb:(NSInteger)hb;
+ (BOOL)mas_commonSuperviewOfViewsHb:(NSInteger)hb;

@end
