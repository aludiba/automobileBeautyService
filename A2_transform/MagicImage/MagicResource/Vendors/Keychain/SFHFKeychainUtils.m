#import "SFHFKeychainUtils.h"
#import <Security/Security.h>
static NSString *SFHFKeychainUtilsErrorDomain = @"SFHFKeychainUtilsErrorDomain";
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 30000 && TARGET_IPHONE_SIMULATOR
@interface SFHFKeychainUtils (PrivateMethods)
(SecKeychainItemRef) getKeychainItemReferenceForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error;
@end
#endif
@implementation SFHFKeychainUtils
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 30000 && TARGET_IPHONE_SIMULATOR
+(NSString *) getPasswordForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error {
    if (!username || !serviceName) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -2000 userInfo: nil];
        return nil;
    }
    SecKeychainItemRef item = [SFHFKeychainUtils getKeychainItemReferenceForUsername: username andServiceName: serviceName error: error];
    if (*error || !item) {
        return nil;
    }
    UInt32 length;
    char *password;
    SecKeychainAttribute attributes[8];
    SecKeychainAttributeList list;
    attributes[0].tag = kSecAccountItemAttr;
    attributes[1].tag = kSecDescriptionItemAttr;
    attributes[2].tag = kSecLabelItemAttr;
    attributes[3].tag = kSecModDateItemAttr;
    list.count = 4;
    list.attr = attributes;
    OSStatus status = SecKeychainItemCopyContent(item, NULL, &list, &length, (void **)&password);
    if (status != noErr) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
        return nil;
    }
    NSString *passwordString = nil;
    if (password != NULL) {
        char passwordBuffer[1024];
        if (length > 1023) {
            length = 1023;
        }
        strncpy(passwordBuffer, password, length);
        passwordBuffer[length] = '\0';
        passwordString = [NSString stringWithCString:passwordBuffer];
    }
    SecKeychainItemFreeContent(&list, password);
    CFRelease(item);
    return passwordString;
}
+ (void) storeUsername: (NSString *) username andPassword: (NSString *) password forServiceName: (NSString *) serviceName updateExisting: (BOOL) updateExisting error: (NSError **) error {
    if (!username || !password || !serviceName) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -2000 userInfo: nil];
        return;
    }
    OSStatus status = noErr;
    SecKeychainItemRef item = [SFHFKeychainUtils getKeychainItemReferenceForUsername: username andServiceName: serviceName error: error];
    if (*error && [*error code] != noErr) {
        return;
    }
    *error = nil;
    if (item) {
        status = SecKeychainItemModifyAttributesAndData(item,NULL,strlen([password UTF8String]),[password UTF8String]);
        CFRelease(item);
    }
    else {
        status = SecKeychainAddGenericPassword(NULL,strlen([serviceName UTF8String]),[serviceName UTF8String],strlen([username UTF8String]),[username UTF8String],strlen([password UTF8String]),[password UTF8String],NULL);
    }
    if (status != noErr) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
    }
}
+ (void) deleteItemForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error {
    if (!username || !serviceName) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: 2000 userInfo: nil];
        return;
    }
    *error = nil;
    SecKeychainItemRef item = [SFHFKeychainUtils getKeychainItemReferenceForUsername: username andServiceName: serviceName error: error];
    if (*error && [*error code] != noErr) {
        return;
    }
    OSStatus status;
    if (item) {
        status = SecKeychainItemDelete(item);
        CFRelease(item);
    }
    if (status != noErr) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
    }
}
+ (SecKeychainItemRef) getKeychainItemReferenceForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error {
    if (!username || !serviceName) {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -2000 userInfo: nil];
        return nil;
    }
    *error = nil;
    SecKeychainItemRef item;
    OSStatus status = SecKeychainFindGenericPassword(NULL,strlen([serviceName UTF8String]),[serviceName UTF8String],strlen([username UTF8String]),[username UTF8String], NULL,NULL,&item);
    if (status != noErr) {
        if (status != errSecItemNotFound) {
            *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
        }
        return nil;
    }
    return item;
}
#else
+ (NSString *) getPasswordForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error {
    if (!username || !serviceName) {
        if (error != nil) {
            *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -2000 userInfo: nil];
        }
        return nil;
    }
    if (error != nil) {
        *error = nil;
    }
    NSArray *keys = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClass, kSecAttrAccount, kSecAttrService, nil];
    NSArray *objects = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClassGenericPassword, username, serviceName, nil];
    NSMutableDictionary *query = [[NSMutableDictionary alloc] initWithObjects: objects forKeys: keys];
    NSMutableDictionary *attributeQuery = [query mutableCopy];
    [attributeQuery setObject: (id) kCFBooleanTrue forKey:(__bridge_transfer id) kSecReturnAttributes];
    CFTypeRef attrResult = NULL;
    OSStatus status = SecItemCopyMatching((__bridge_retained CFDictionaryRef) attributeQuery, &attrResult);
    if (status != noErr) {
        if (error != nil && status != errSecItemNotFound) {
            *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
        }
        return nil;
    }
    NSMutableDictionary *passwordQuery = [query mutableCopy];
    [passwordQuery setObject: (id) kCFBooleanTrue forKey: (__bridge_transfer id) kSecReturnData];
    CFTypeRef resData = NULL;
    status = SecItemCopyMatching((__bridge_retained CFDictionaryRef) passwordQuery, (CFTypeRef *) &resData);
    NSData *resultData = (__bridge_transfer NSData *)resData;
    if (status != noErr) {
        if (status == errSecItemNotFound) {
            if (error != nil) {
                *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -1999 userInfo: nil];
            }
        }
        else {
            if (error != nil) {
                *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
            }
        }
        return nil;
    }
    NSString *password = nil;
    if (resultData) {
        password = [[NSString alloc] initWithData: resultData encoding: NSUTF8StringEncoding];
    }
    else {
        if (error != nil) {
            *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -1999 userInfo: nil];
        }
    }
    return password;
}
+ (BOOL) storeUsername: (NSString *) username andPassword: (NSString *) password forServiceName: (NSString *) serviceName updateExisting: (BOOL) updateExisting error: (NSError **) error
{
    if (!username || !password || !serviceName)
    {
        if (error != nil)
        {
            *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -2000 userInfo: nil];
        }
        return NO;
    }
    NSError *getError = nil;
    NSString *existingPassword = [SFHFKeychainUtils getPasswordForUsername: username andServiceName: serviceName error:&getError];
    if ([getError code] == -1999)
    {
        getError = nil;
        [self deleteItemForUsername: username andServiceName: serviceName error: &getError];
        if ([getError code] != noErr)
        {
            if (error != nil)
            {
                *error = getError;
            }
            return NO;
        }
    }
    else if ([getError code] != noErr)
    {
        if (error != nil)
        {
            *error = getError;
        }
        return NO;
    }
    if (error != nil)
    {
        *error = nil;
    }
    OSStatus status = noErr;
    if (existingPassword)
    {
        if (![existingPassword isEqualToString:password] && updateExisting)
        {
            NSArray *keys = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClass,kSecAttrService,kSecAttrLabel,kSecAttrAccount,nil];
            NSArray *objects = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClassGenericPassword,serviceName,serviceName,username,nil];
            NSDictionary *query = [[NSDictionary alloc] initWithObjects: objects forKeys: keys];
            status = SecItemUpdate((__bridge_retained CFDictionaryRef) query, (__bridge_retained CFDictionaryRef) [NSDictionary dictionaryWithObject: [password dataUsingEncoding: NSUTF8StringEncoding] forKey: (__bridge_transfer NSString *) kSecValueData]);
        }
    }
    else
    {
        NSArray *keys = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClass,kSecAttrService,kSecAttrLabel,kSecAttrAccount,kSecValueData,nil];
        NSArray *objects = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClassGenericPassword,serviceName,serviceName,username,[password dataUsingEncoding: NSUTF8StringEncoding],nil];
        NSDictionary *query = [[NSDictionary alloc] initWithObjects: objects forKeys: keys];
        status = SecItemAdd((__bridge_retained CFDictionaryRef) query, NULL);
    }
    if (error != nil && status != noErr)
    {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
        return NO;
    }
    return YES;
}
+ (BOOL) deleteItemForUsername: (NSString *) username andServiceName: (NSString *) serviceName error: (NSError **) error
{
    if (!username || !serviceName)
    {
        if (error != nil)
        {
            *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: -2000 userInfo: nil];
        }
        return NO;
    }
    if (error != nil)
    {
        *error = nil;
    }
    NSArray *keys = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClass, kSecAttrAccount, kSecAttrService, kSecReturnAttributes, nil];
    NSArray *objects = [[NSArray alloc] initWithObjects: (__bridge_transfer NSString *) kSecClassGenericPassword, username, serviceName, kCFBooleanTrue, nil];
    NSDictionary *query = [[NSDictionary alloc] initWithObjects: objects forKeys: keys];
    OSStatus status = SecItemDelete((__bridge_retained CFDictionaryRef) query);
    if (error != nil && status != noErr)
    {
        *error = [NSError errorWithDomain: SFHFKeychainUtilsErrorDomain code: status userInfo: nil];
        return NO;
    }
    return YES;
}
#endif
@end
