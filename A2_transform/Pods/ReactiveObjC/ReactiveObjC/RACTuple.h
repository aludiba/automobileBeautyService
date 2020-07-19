#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
@class RACSequence;
#define RACTuplePack(...) \
    RACTuplePack_(__VA_ARGS__)
#define RACTupleUnpack(...) \
        RACTupleUnpack_(__VA_ARGS__)
@class RACTwoTuple<__covariant First, __covariant Second>;
@class RACThreeTuple<__covariant First, __covariant Second, __covariant Third>;
@class RACFourTuple<__covariant First, __covariant Second, __covariant Third, __covariant Fourth>;
@class RACFiveTuple<__covariant First, __covariant Second, __covariant Third, __covariant Fourth, __covariant Fifth>;
NS_ASSUME_NONNULL_BEGIN
@interface RACTupleNil : NSObject <NSCopying, NSCoding>
+ (RACTupleNil *)tupleNil;
@end
@interface RACTuple : NSObject <NSCoding, NSCopying, NSFastEnumeration>
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly, nullable) id first;
@property (nonatomic, readonly, nullable) id second;
@property (nonatomic, readonly, nullable) id third;
@property (nonatomic, readonly, nullable) id fourth;
@property (nonatomic, readonly, nullable) id fifth;
@property (nonatomic, readonly, nullable) id last;
+ (instancetype)tupleWithObjectsFromArray:(NSArray *)array;
+ (instancetype)tupleWithObjectsFromArray:(NSArray *)array convertNullsToNils:(BOOL)convert;
+ (instancetype)tupleWithObjects:(id)object, ... NS_REQUIRES_NIL_TERMINATION;
- (nullable id)objectAtIndex:(NSUInteger)index;
- (NSArray *)allObjects;
- (__kindof RACTuple *)tupleByAddingObject:(nullable id)obj;
@end
@interface RACTuple (RACSequenceAdditions)
@property (nonatomic, copy, readonly) RACSequence *rac_sequence;
@end
@interface RACTuple (ObjectSubscripting)
- (nullable id)objectAtIndexedSubscript:(NSUInteger)idx;
@end
@interface RACOneTuple<__covariant First> : RACTuple
+ (instancetype)tupleWithObjects:(id)object, ... __attribute((unavailable("Use pack: instead.")));
- (RACTwoTuple<First, id> *)tupleByAddingObject:(nullable id)obj;
+ (RACOneTuple<First> *)pack:(nullable First)first;
@property (nonatomic, readonly, nullable) First first;
@end
@interface RACTwoTuple<__covariant First, __covariant Second> : RACTuple
+ (instancetype)tupleWithObjects:(id)object, ... __attribute((unavailable("Use pack:: instead.")));
- (RACThreeTuple<First, Second, id> *)tupleByAddingObject:(nullable id)obj;
+ (RACTwoTuple<First, Second> *)pack:(nullable First)first :(nullable Second)second;
@property (nonatomic, readonly, nullable) First first;
@property (nonatomic, readonly, nullable) Second second;
@end
@interface RACThreeTuple<__covariant First, __covariant Second, __covariant Third> : RACTuple
+ (instancetype)tupleWithObjects:(id)object, ... __attribute((unavailable("Use pack::: instead.")));
- (RACFourTuple<First, Second, Third, id> *)tupleByAddingObject:(nullable id)obj;
+ (instancetype)pack:(nullable First)first :(nullable Second)second :(nullable Third)third;
@property (nonatomic, readonly, nullable) First first;
@property (nonatomic, readonly, nullable) Second second;
@property (nonatomic, readonly, nullable) Third third;
@end
@interface RACFourTuple<__covariant First, __covariant Second, __covariant Third, __covariant Fourth> : RACTuple
+ (instancetype)tupleWithObjects:(id)object, ... __attribute((unavailable("Use pack:::: instead.")));
- (RACFiveTuple<First, Second, Third, Fourth, id> *)tupleByAddingObject:(nullable id)obj;
+ (instancetype)pack:(nullable First)first :(nullable Second)second :(nullable Third)third :(nullable Fourth)fourth;
@property (nonatomic, readonly, nullable) First first;
@property (nonatomic, readonly, nullable) Second second;
@property (nonatomic, readonly, nullable) Third third;
@property (nonatomic, readonly, nullable) Fourth fourth;
@end
@interface RACFiveTuple<__covariant First, __covariant Second, __covariant Third, __covariant Fourth, __covariant Fifth> : RACTuple
+ (instancetype)tupleWithObjects:(id)object, ... __attribute((unavailable("Use pack::::: instead.")));
+ (instancetype)pack:(nullable First)first :(nullable Second)second :(nullable Third)third :(nullable Fourth)fourth :(nullable Fifth)fifth;
@property (nonatomic, readonly, nullable) First first;
@property (nonatomic, readonly, nullable) Second second;
@property (nonatomic, readonly, nullable) Third third;
@property (nonatomic, readonly, nullable) Fourth fourth;
@property (nonatomic, readonly, nullable) Fifth fifth;
@end
#define RACTuplePack_(...) \
    ([RACTuplePack_class_name(__VA_ARGS__) tupleWithObjectsFromArray:@[ metamacro_foreach(RACTuplePack_object_or_ractuplenil,, __VA_ARGS__) ]])
#define RACTuplePack_object_or_ractuplenil(INDEX, ARG) \
    (ARG) ?: RACTupleNil.tupleNil,
#define RACTuplePack_class_name(...) \
        metamacro_at(20, __VA_ARGS__, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACTuple, RACFiveTuple, RACFourTuple, RACThreeTuple, RACTwoTuple, RACOneTuple)
#define RACTupleUnpack_(...) \
    metamacro_foreach(RACTupleUnpack_decl,, __VA_ARGS__) \
    \
    int RACTupleUnpack_state = 0; \
    \
    RACTupleUnpack_after: \
        ; \
        metamacro_foreach(RACTupleUnpack_assign,, __VA_ARGS__) \
        if (RACTupleUnpack_state != 0) RACTupleUnpack_state = 2; \
        \
        while (RACTupleUnpack_state != 2) \
            if (RACTupleUnpack_state == 1) { \
                goto RACTupleUnpack_after; \
            } else \
                for (; RACTupleUnpack_state != 1; RACTupleUnpack_state = 1) \
                    [RACTupleUnpackingTrampoline trampoline][ @[ metamacro_foreach(RACTupleUnpack_value,, __VA_ARGS__) ] ]
#define RACTupleUnpack_state metamacro_concat(RACTupleUnpack_state, __LINE__)
#define RACTupleUnpack_after metamacro_concat(RACTupleUnpack_after, __LINE__)
#define RACTupleUnpack_loop metamacro_concat(RACTupleUnpack_loop, __LINE__)
#define RACTupleUnpack_decl_name(INDEX) \
    metamacro_concat(metamacro_concat(RACTupleUnpack, __LINE__), metamacro_concat(_var, INDEX))
#define RACTupleUnpack_decl(INDEX, ARG) \
    __strong id RACTupleUnpack_decl_name(INDEX);
#define RACTupleUnpack_assign(INDEX, ARG) \
    __strong ARG = RACTupleUnpack_decl_name(INDEX);
#define RACTupleUnpack_value(INDEX, ARG) \
    [NSValue valueWithPointer:&RACTupleUnpack_decl_name(INDEX)],
@interface RACTupleUnpackingTrampoline : NSObject
+ (instancetype)trampoline;
- (void)setObject:(nullable RACTuple *)tuple forKeyedSubscript:(NSArray *)variables;
@end
NS_ASSUME_NONNULL_END
