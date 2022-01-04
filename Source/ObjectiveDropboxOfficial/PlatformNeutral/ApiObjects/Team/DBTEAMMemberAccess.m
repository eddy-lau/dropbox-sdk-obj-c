///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupAccessType.h"
#import "DBTEAMMemberAccess.h"
#import "DBTEAMUserSelectorArg.h"

#pragma mark - API Object

@implementation DBTEAMMemberAccess

#pragma mark - Constructors

- (instancetype)initWithUser:(DBTEAMUserSelectorArg *)user accessType:(DBTEAMGroupAccessType *)accessType {

  self = [super init];
  if (self) {
    _user = user;
    _accessType = accessType;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMemberAccessSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMemberAccessSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMemberAccessSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMemberAccessSerializer

+ (NSDictionary *)serialize:(DBTEAMMemberAccess *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"user"] = [DBTEAMUserSelectorArgSerializer serialize:valueObj.user];
  jsonDict[@"access_type"] = [DBTEAMGroupAccessTypeSerializer serialize:valueObj.accessType];

  return jsonDict;
}

+ (DBTEAMMemberAccess *)deserialize:(NSDictionary *)valueDict {
  DBTEAMUserSelectorArg *user = [DBTEAMUserSelectorArgSerializer deserialize:valueDict[@"user"]];
  DBTEAMGroupAccessType *accessType = [DBTEAMGroupAccessTypeSerializer deserialize:valueDict[@"access_type"]];

  return [[DBTEAMMemberAccess alloc] initWithUser:user accessType:accessType];
}

@end
