#import <Foundation/Foundation.h>
@interface hbRACChannelTerminale: NSObject
+ (BOOL)YInitwithvaluesotherterminalhb:(NSInteger)hb;
+ (BOOL)cSubscribehb:(NSInteger)hb;
+ (BOOL)VSendnexthb:(NSInteger)hb;
+ (BOOL)GSenderrorhb:(NSInteger)hb;
+ (BOOL)KSendcompletedhb:(NSInteger)hb;
+ (BOOL)aDidsubscribewithdisposablehb:(NSInteger)hb;

@end
