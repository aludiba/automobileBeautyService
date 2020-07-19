#import "NSURLConnection+RACSupport.h"
#import "RACDisposable.h"
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACTuple.h"
@implementation NSURLConnection (RACSupport)
+ (RACSignal *)rac_sendAsynchronousRequest:(NSURLRequest *)request {
	NSCParameterAssert(request != nil);
	return [[RACSignal
		createSignal:^(id<RACSubscriber> subscriber) {
			NSOperationQueue *queue = [[NSOperationQueue alloc] init];
			queue.name = @"org.reactivecocoa.ReactiveObjC.NSURLConnectionRACSupport";
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
			[NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
				if (response == nil || data == nil) {
					[subscriber sendError:error];
				} else {
					[subscriber sendNext:RACTuplePack(response, data)];
					[subscriber sendCompleted];
				}
			}];
#pragma clang diagnostic pop
			return [RACDisposable disposableWithBlock:^{
				queue.suspended = YES;
				[queue cancelAllOperations];
			}];
		}]
		setNameWithFormat:@"+rac_sendAsynchronousRequest: %@", request];
}
@end
