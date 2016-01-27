//
//  Book+CoreDataProperties.h
//  BookClub
//
//  Created by Julian Lee on 1/27/16.
//  Copyright © 2016 admin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface Book (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *friends;
@property (nullable, nonatomic, retain) NSString *comments;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *recByFriends;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *commentOf;

@end

@interface Book (CoreDataGeneratedAccessors)

- (void)addRecByFriendsObject:(NSManagedObject *)value;
- (void)removeRecByFriendsObject:(NSManagedObject *)value;
- (void)addRecByFriends:(NSSet<NSManagedObject *> *)values;
- (void)removeRecByFriends:(NSSet<NSManagedObject *> *)values;

- (void)addCommentOfObject:(NSManagedObject *)value;
- (void)removeCommentOfObject:(NSManagedObject *)value;
- (void)addCommentOf:(NSSet<NSManagedObject *> *)values;
- (void)removeCommentOf:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
