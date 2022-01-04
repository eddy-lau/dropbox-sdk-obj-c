///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMListMemberDevicesArg;

#pragma mark - API Object

///
/// The `ListMemberDevicesArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMListMemberDevicesArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The team's member id
@property (nonatomic, readonly, copy) NSString * _Nonnull teamMemberId;

/// Whether to list web sessions of the team's member
@property (nonatomic, readonly) NSNumber * _Nonnull includeWebSessions;

/// Whether to list linked desktop devices of the team's member
@property (nonatomic, readonly) NSNumber * _Nonnull includeDesktopClients;

/// Whether to list linked mobile devices of the team's member
@property (nonatomic, readonly) NSNumber * _Nonnull includeMobileClients;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param teamMemberId The team's member id
/// @param includeWebSessions Whether to list web sessions of the team's member
/// @param includeDesktopClients Whether to list linked desktop devices of the
/// team's member
/// @param includeMobileClients Whether to list linked mobile devices of the
/// team's member
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId
                          includeWebSessions:(NSNumber * _Nullable)includeWebSessions
                       includeDesktopClients:(NSNumber * _Nullable)includeDesktopClients
                        includeMobileClients:(NSNumber * _Nullable)includeMobileClients;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param teamMemberId The team's member id
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `ListMemberDevicesArg` struct.
///
@interface DBTEAMListMemberDevicesArgSerializer : NSObject

///
/// Serializes `DBTEAMListMemberDevicesArg` instances.
///
/// @param instance An instance of the `DBTEAMListMemberDevicesArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMListMemberDevicesArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMListMemberDevicesArg * _Nonnull)instance;

///
/// Deserializes `DBTEAMListMemberDevicesArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMListMemberDevicesArg` API object.
///
/// @return An instantiation of the `DBTEAMListMemberDevicesArg` object.
///
+ (DBTEAMListMemberDevicesArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
