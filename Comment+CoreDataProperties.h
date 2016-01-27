//
//  Comment+CoreDataProperties.h
//  BookClub
//
//  Created by Julian Lee on 1/27/16.
//  Copyright © 2016 admin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Comment.h"

NS_ASSUME_NONNULL_BEGIN

@interface Comment (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *book;
@property (nullable, nonatomic, retain) Book *commentOn;

@end

NS_ASSUME_NONNULL_END
