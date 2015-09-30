//
//  TableViewController.m
//  Challenge 7
//
//  Created by Baran on 9/30/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import "TableViewController.h"
#import "Users.h"
@interface TableViewController ()
@property(nonatomic,strong)NSMutableArray *user;
@end

@implementation TableViewController
@synthesize user;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    user=[[NSMutableArray alloc]init];
    
    Users *user1=[[Users alloc]initWithValue:@"Messi" andEmail:@"messi@gmail.com" andPassword:@"password" andAge:@(29) andImage:[UIImage imageNamed:@"messi.jpg"]];
    
    Users *user2=[[Users alloc]initWithValue:@"Ronaldo" andEmail:@"ronaldooooo_86@gmail.com" andPassword:@"password" andAge:@(30) andImage:[UIImage imageNamed:@"ronaldo.jpg"]];
    
    Users *user3=[[Users alloc]initWithValue:@"Aguero" andEmail:@"sonInLawOfMARADONA@gmail.com" andPassword:@"password" andAge:@(27) andImage:[UIImage imageNamed:@"Aguero.jpg"]];
    
    Users *user4=[[Users alloc]initWithValue:@"Kaka" andEmail:@"kakaleite@hotmail.com" andPassword:@"password" andAge:@(33) andImage:[UIImage imageNamed:@"kaka.jpg"]];
    
    Users *user5=[[Users alloc]initWithValue:@"Drogba" andEmail:@"goalMachine@gmail.com" andPassword:@"password" andAge:@(42) andImage:[UIImage imageNamed:@"drogba.jpg"]];
    
    Users *user6=[[Users alloc]initWithValue:@"Sneijder" andEmail:@"spiderCleaner@aol.com" andPassword:@"password" andAge:@(19) andImage:[UIImage imageNamed:@"sneijder.jpg"]];
    
    [user addObject:user1];
    [user addObject:user2];
    [user addObject:user3];
    [user addObject:user4];
    [user addObject:user5];
    [user addObject:user6];
    
    
    self.view.backgroundColor=[UIColor grayColor];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
   
    
    return [user count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
   Users *u1 = [user objectAtIndex:indexPath.row];
    cell.textLabel.text=u1.name;
    cell.imageView.image=u1.picture;
    cell.backgroundColor=[UIColor grayColor];
    cell.detailTextLabel.text=u1.email;
    cell.textLabel.backgroundColor=[UIColor colorWithWhite:0.9 alpha:0.3];
    cell.detailTextLabel.backgroundColor=[UIColor colorWithWhite:0.3 alpha:0.1];
    
    return cell;
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
