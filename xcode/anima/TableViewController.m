//
//  TableViewController.m
//  anima
//
//  Created by Daniel Fliegauf on 10/06/14.
//  Copyright (c) 2014 Daniel Fliegauf. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()

@property (nonatomic, retain) NSArray *project0Array;
@property (nonatomic, retain) NSArray *allProjectsArray;


@end

@implementation TableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.project0Array = @[@[@"BacklogItem 1", @"Backlog1 Text"], @[@"BacklogItem 2", @"Backlog2 Text"], @[@"BacklogItem 3", @"Backlog3 Text"], @[@"BacklogItem 4", @"Backlo4 Text"]];
    self.allProjectsArray = @[@"Project0", @"Project1", @"Project2"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.allProjectsArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.project0Array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
//    for (int i=0; i<[self.subtitleObjectsArray count]; i++) {
        return [self.allProjectsArray objectAtIndex:section];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
 
    // Configure the cell...
    
    // return appropriate cell(s) based on section
    if(indexPath.section == 0) //Project 0
    {
        // Return 1 cell
        cell.textLabel.text = [[self.project0Array objectAtIndex:indexPath.row] objectAtIndex:0];
    }
    else if(indexPath.section == 1) //Project 1
    {
        cell.textLabel.text = [[self.project0Array objectAtIndex:indexPath.section] objectAtIndex:0];
    }
    else if(indexPath.section == 2) //Project 2
    {
        cell.textLabel.text = [[self.project0Array objectAtIndex:indexPath.section] objectAtIndex:0];
    }
    else
    {
        cell.textLabel.text = [[self.project0Array objectAtIndex:indexPath.section] objectAtIndex:0];
    }
   

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"Detail" sender:self];
    
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"Detail"]) {
        

    __weak id weakSelf = self;
    [[segue destinationViewController] setDelegate:weakSelf];
    [[segue destinationViewController] setBacklogText:[NSString stringWithFormat:@"asdasfhasjf   %@", [[[sender project0Array] objectAtIndex:1] objectAtIndex:1]]];
    }
}


@end
