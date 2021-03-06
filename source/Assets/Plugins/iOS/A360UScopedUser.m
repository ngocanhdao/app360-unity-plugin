//
//  A360UScopedUser.m
//  App360USDK
//
//  Created by Tuan Tran Manh on 4/15/15.
//  Copyright (c) 2015 Mwork. All rights reserved.
//

#import "A360UScopedUser.h"
#import <App360SDK/App360SDK.h>
#import "NSDictionary+JSON.h"

NSString * const kScopedId = @"scoped_id";
NSString * const kChannel = @"channel";
NSString * const kSubChannel = @"sub_channel";

@implementation A360UScopedUser

- (instancetype)initWithClient:(A360UTypeScopedUserClientRef *)client
{
    self = [super init];
    if (self) {
        _client = client;
    }
    return self;
}

+ (NSString *)getScopedId
{
    return [[MOGScopedUser getCurrentUser] scopedId];
}

+ (NSString *)getChannel
{
    return [[MOGScopedUser getCurrentUser] channel];
}

+ (NSString *)getSubChannel
{
    return [[MOGScopedUser getCurrentUser] subChannel];
}

- (void)linkFacebookWithToken:(NSString *)token
{
    [[MOGScopedUser getCurrentUser] linkWithFacebookToken:token block:^(MOGSession *session, NSError *error) {
        
    }];
}

- (void)linkGoogleWithToken:(NSString *)token
{
    [[MOGScopedUser getCurrentUser] linkWithGoogleToken:token block:^(MOGSession *session, NSError *error) {
        
    }];
}

- (void)unlinkWithFacebook
{
    [[MOGScopedUser getCurrentUser] unlinkFacebookInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        
    }];
}

- (void)unLinkWithGoogle
{
    [[MOGScopedUser getCurrentUser] unlinkGoogleInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        
    }];
}

- (NSString *)getCurrentUser
{
    MOGScopedUser *user = [MOGScopedUser getCurrentUser];
    NSDictionary *userData = @{kScopedId: user.scopedId, kChannel: user.channel, kSubChannel: user.subChannel};
    return [userData toJSONString];
}

@end
