#import "MASConstraint.h"
#import "MASUtilities.h"
#import "MASCompositeConstraint.h"
#import "MASConstraint+Private.h"

@interface MASCompositeConstraint (Hb)
+ (BOOL)initWithChildrenHb:(NSInteger)hb;
+ (BOOL)constraintShouldbereplacedwithconstraintHb:(NSInteger)hb;
+ (BOOL)constraintAddconstraintwithlayoutattributeHb:(NSInteger)hb;
+ (BOOL)(CGFloat))multipliedByHb:(NSInteger)hb;
+ (BOOL)(CGFloat))dividedByHb:(NSInteger)hb;
+ (BOOL)(MASLayoutPriority))priorityHb:(NSInteger)hb;
+ (BOOL)(id, NSLayoutRelation))equalToWithRelationHb:(NSInteger)hb;
+ (BOOL)addConstraintWithLayoutAttributeHb:(NSInteger)hb;
+ (BOOL)animatorHb:(NSInteger)hb;
+ (BOOL)(id))keyHb:(NSInteger)hb;
+ (BOOL)setInsetsHb:(NSInteger)hb;
+ (BOOL)setInsetHb:(NSInteger)hb;
+ (BOOL)setOffsetHb:(NSInteger)hb;
+ (BOOL)setSizeOffsetHb:(NSInteger)hb;
+ (BOOL)setCenterOffsetHb:(NSInteger)hb;
+ (BOOL)activateHb:(NSInteger)hb;
+ (BOOL)deactivateHb:(NSInteger)hb;
+ (BOOL)installHb:(NSInteger)hb;
+ (BOOL)uninstallHb:(NSInteger)hb;

@end
