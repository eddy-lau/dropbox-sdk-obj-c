///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupMemberInfo.h"
#import "DBTEAMGroupsMembersListResult.h"

#pragma mark - API Object

@implementation DBTEAMGroupsMembersListResult

#pragma mark - Constructors

- (instancetype)initWithMembers:(NSArray<DBTEAMGroupMemberInfo *> *)members
                         cursor:(NSString *)cursor
                        hasMore:(NSNumber *)hasMore {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](members);

  self = [super init];
  if (self) {
    _members = members;
    _cursor = cursor;
    _hasMore = hasMore;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGroupsMembersListResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGroupsMembersListResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGroupsMembersListResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGroupsMembersListResultSerializer

+ (NSDictionary *)serialize:(DBTEAMGroupsMembersListResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"members"] = [DBArraySerializer serialize:valueObj.members
                                            withBlock:^id(id elem) {
                                              return [DBTEAMGroupMemberInfoSerializer serialize:elem];
                                            }];
  jsonDict[@"cursor"] = valueObj.cursor;
  jsonDict[@"has_more"] = valueObj.hasMore;

  return jsonDict;
}

+ (DBTEAMGroupsMembersListResult *)deserialize:(NSDictionary *)valueDict {
  NSArray<DBTEAMGroupMemberInfo *> *members =
      [DBArraySerializer deserialize:valueDict[@"members"]
                           withBlock:^id(id elem) {
                             return [DBTEAMGroupMemberInfoSerializer deserialize:elem];
                           }];
  NSString *cursor = valueDict[@"cursor"];
  NSNumber *hasMore = valueDict[@"has_more"];

  return [[DBTEAMGroupsMembersListResult alloc] initWithMembers:members cursor:cursor hasMore:hasMore];
}

@end
