//
//  Book+CoreDataProperties.m
//  BookClub
//
//  Created by Julian Lee on 1/27/16.
//  Copyright © 2016 admin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Book+CoreDataProperties.h"

@implementation Book (CoreDataProperties)

@dynamic name;
@dynamic friends;
@dynamic comments;
@dynamic recByFriends;
@dynamic commentOf;

@end
