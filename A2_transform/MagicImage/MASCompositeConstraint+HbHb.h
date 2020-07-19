#import "MASConstraint.h"
#import "MASUtilities.h"
#import "MASCompositeConstraint.h"
#import "MASConstraint+Private.h"
#import "MASCompositeConstraint+Hb.h"

@interface MASCompositeConstraint (HbHb)
+ (BOOL)initWithChildrenHbHb:(NSInteger)hb;
+ (BOOL)constraintShouldbereplacedwithconstraintHbHb:(NSInteger)hb;
+ (BOOL)constraintAddconstraintwithlayoutattributeHbHb:(NSInteger)hb;
+ (BOOL)multipliedByHbHb:(NSInteger)hb;
+ (BOOL)dividedByHbHb:(NSInteger)hb;
+ (BOOL)priorityHbHb:(NSInteger)hb;
+ (BOOL)equalToWithRelationHbHb:(NSInteger)hb;
+ (BOOL)addConstraintWithLayoutAttributeHbHb:(NSInteger)hb;
+ (BOOL)animatorHbHb:(NSInteger)hb;
+ (BOOL)keyHbHb:(NSInteger)hb;
+ (BOOL)setInsetsHbHb:(NSInteger)hb;
+ (BOOL)setInsetHbHb:(NSInteger)hb;
+ (BOOL)setOffsetHbHb:(NSInteger)hb;
+ (BOOL)setSizeOffsetHbHb:(NSInteger)hb;
+ (BOOL)setCenterOffsetHbHb:(NSInteger)hb;
+ (BOOL)activateHbHb:(NSInteger)hb;
+ (BOOL)deactivateHbHb:(NSInteger)hb;
+ (BOOL)installHbHb:(NSInteger)hb;
+ (BOOL)uninstallHbHb:(NSInteger)hb;

@end
