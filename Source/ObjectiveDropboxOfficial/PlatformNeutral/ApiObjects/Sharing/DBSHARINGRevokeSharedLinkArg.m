///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGRevokeSharedLinkArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGRevokeSharedLinkArg

#pragma mark - Constructors

- (instancetype)initWithUrl:(NSString *)url {

  self = [super init];
  if (self) {
    _url = url;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGRevokeSharedLinkArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGRevokeSharedLinkArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGRevokeSharedLinkArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGRevokeSharedLinkArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGRevokeSharedLinkArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"url"] = valueObj.url;

  return jsonDict;
}

+ (DBSHARINGRevokeSharedLinkArg *)deserialize:(NSDictionary *)valueDict {
  NSString *url = valueDict[@"url"];

  return [[DBSHARINGRevokeSharedLinkArg alloc] initWithUrl:url];
}

@end
