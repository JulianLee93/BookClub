//
//  Friend+CoreDataProperties.h
//  BookClub
//
//  Created by Julian Lee on 1/27/16.
//  Copyright © 2016 admin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Friend.h"

NS_ASSUME_NONNULL_BEGIN

@interface Friend (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *books;
@property (nullable, nonatomic, retain) NSNumber *numOfBooks;
@property (nullable, nonatomic, retain) NSSet<Book *> *recBooks;

@end

@interface Friend (CoreDataGeneratedAccessors)

- (void)addRecBooksObject:(Book *)value;
- (void)removeRecBooksObject:(Book *)value;
- (void)addRecBooks:(NSSet<Book *> *)values;
- (void)removeRecBooks:(NSSet<Book *> *)values;

@end

NS_ASSUME_NONNULL_END
