//
//  ViewController.h
//  anima
//
//  Created by Daniel Fliegauf on 06/06/14.
//  Copyright (c) 2014 Daniel Fliegauf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate>

@property (weak, nonatomic) id <UINavigationBarDelegate> delegate;
@property (weak, nonatomic) NSString *backlogText;
@property (weak, nonatomic) IBOutlet UILabel *backlogTextLabel;

@end

