#import "YWebDataHandle.h"
@implementation YWebDataHandle
+ (NSString *)imageNameForBase64Handle:(NSString *)path
{
    NSData * data = [path dataUsingEncoding:NSUTF8StringEncoding];
    NSString * imageNameBase = [data base64EncodedStringWithOptions:0];
    return [imageNameBase stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}
+(NSString *)stringForBase64Handle:(NSString *)path
{
    NSData * data = [path dataUsingEncoding:NSUTF8StringEncoding];
    NSString * imageNameBase = [data base64EncodedStringWithOptions:0];
    return [imageNameBase stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}
+(NSString *)documentPath
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
}
+(NSString *)documentAppendPath:(NSString *)fileName
{
    return [[[self class] documentPath] stringByAppendingPathComponent:fileName];
}
+(NSString *)documentAppendPaths:(NSArray<NSString *> *)fileNames
{
    NSMutableString * path = [NSMutableString stringWithString:[[self class] documentPath]];
    for (NSString * fileName in fileNames)
    {
        [path appendFormat:@"/%@",fileName];
    }
    return [NSString stringWithString:path];
}
+(NSString *)documentYWebImageFileWithFolder:(NSString * )folder
{
    return [[self class] documentAppendPath:folder];
}
+(NSString *)documentYWebImageFileAppendWithFolder:(NSString *)folder withFile:(NSString *)fileName
{
    return [[[self class] documentYWebImageFileWithFolder:folder] stringByAppendingPathComponent:fileName];
}
+(NSString *)documentYWebImageFileAppendBase64WithFolder:(NSString *)folder withFile:(NSString *)fileName
{
    if (__IPHONE_9_0)
    {
        return [[self class]documentYWebImageFileAppendWithFolder:folder withFile:[[self class] stringForBase64Handle:fileName]];
    }
    return [[self class] documentYWebImageFileAppendWithFolder:folder withFile:[[self class] imageNameForBase64Handle:fileName]];
}
@end
