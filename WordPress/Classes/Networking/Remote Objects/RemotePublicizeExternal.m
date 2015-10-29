#import "RemotePublicizeExternal.h"

@implementation RemotePublicizeExternal

- (instancetype)initWithDictionary:(NSDictionary *)remote
{
    if ((self = [super init])) {
        _account = [remote stringForKey:@"external_ID"];
        _name = [remote stringForKey:@"external_display"] ?: [remote stringForKey:@"external_name"];
        _picture = [remote stringForKey:@"external_profile_picture"];
        _keyring = [remote numberForKey:@"ID"];
        _refresh = [remote stringForKey:@"refresh_URL"];
    }
    
    return self;
}

- (NSString *)debugDescription {
    NSDictionary *properties = @{
                                 @"account": self.account,
                                 @"name": self.name,
                                 @"picture": self.picture,
                                 @"keyring": self.keyring,
                                 @"refresh": self.refresh,
                                 };
    return [NSString stringWithFormat:@"<%@: %p> (%@)", NSStringFromClass([self class]), self, properties];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p> %@[%@]", NSStringFromClass([self class]), self, self.name];
}

@end