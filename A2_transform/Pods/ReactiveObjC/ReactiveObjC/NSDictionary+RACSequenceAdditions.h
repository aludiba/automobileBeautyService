#import <Foundation/Foundation.h>
@class RACSequence<__covariant ValueType>;
@class RACTwoTuple<__covariant First, __covariant Second>;
NS_ASSUME_NONNULL_BEGIN
@interface NSDictionary<__covariant KeyType, __covariant ObjectType> (RACSequenceAdditions)
@property (nonatomic, copy, readonly) RACSequence<RACTwoTuple<KeyType, ObjectType> *> *rac_sequence;
@property (nonatomic, copy, readonly) RACSequence<KeyType> *rac_keySequence;
@property (nonatomic, copy, readonly) RACSequence<ObjectType> *rac_valueSequence;
@end
NS_ASSUME_NONNULL_END
