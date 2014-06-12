//
//  MasterViewController.m
//  anima
//
//  Created by Daniel Fliegauf on 10/06/14.
//  Copyright (c) 2014 Daniel Fliegauf. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()
@property (weak, nonatomic) IBOutlet UIButton *heartButton;

@end

@implementation MasterViewController

//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.heartButton setBackgroundImage:[UIImage imageNamed:@"heart"] forState:UIControlStateNormal];
    [self.heartButton setTitle:@"" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation
- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier:@"Project" sender:sender];
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"Project"]) {
        
        __weak id weakSelf = self;
        [[segue destinationViewController] setDelegate:weakSelf];
    }
}



@end
