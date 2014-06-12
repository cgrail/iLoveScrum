//
//  ViewController.m
//  anima
//
//  Created by Daniel Fliegauf on 06/06/14.
//  Copyright (c) 2014 Daniel Fliegauf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *heart;

-(void)animateHeart:(NSTimer*) t ;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backlogTextLabel.text = self.backlogText;
    // Do any additional setup after loading the view, typically from a nib.
    //UIButton *results = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 100, 100)];
    //[results addTarget:self action:@selector(validateUserInputs) forControlEvents:UIControlEventTouchDragInside];
    //[self.view addSubview:results];
        self.heart.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    [UIView animateWithDuration:1.3/1 animations:^{
        self.heart.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.4, 1.4);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.3/2 animations:^{
            self.heart.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.6, 0.7);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.3/2 animations:^{
                self.heart.transform = CGAffineTransformIdentity;
            }];
        }];
        
    }];
   [NSTimer scheduledTimerWithTimeInterval: 4.5/2 target: self
                                                      selector: @selector(animateHeart:) userInfo: nil repeats: YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)animateHeart:(NSTimer*) t
{

    
    [UIView animateWithDuration:1.3/2 animations:^{
        self.heart.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.4, 1.4);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.3/2 animations:^{
            self.heart.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.6, 0.7);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.3/2 animations:^{
                self.heart.transform = CGAffineTransformIdentity;
            }];
        }];
        
    }];
}

@end
