//
//  FriendListTableViewController.m
//  BookClub
//
//  Created by Julian Lee on 1/27/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "FriendListTableViewController.h"
#import "Friend.h"
#import "AppDelegate.h"

@interface FriendListTableViewController ()

@property NSArray *listOfFriends;
@property NSManagedObjectContext *moc;


@end

@implementation FriendListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    self.moc = appDelegate.managedObjectContext;
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Friend"];
    NSError *error;
    self.listOfFriends = [self.moc executeFetchRequest:request error:&error];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listOfFriends.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FriendListCell" forIndexPath:indexPath];
    Friend *currentFriend = self.listOfFriends[indexPath.row];
    cell.textLabel.text = currentFriend.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString *friendName = [self.listOfFriends[indexPath.row] name];
    NSLog(@"%@", friendName);
//    Friend *selectedFriend =
    
    
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
