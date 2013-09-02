//
//  ViewController.h
//  countdown
//
//  Created by Veeral Patel on 9/2/13.
//  Copyright (c) 2013 Veeral Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSDate *destinationDate;
    
    IBOutlet UILabel *monthLabel;
    IBOutlet UILabel *dayLabel;
    IBOutlet UILabel *hourLabel;
    IBOutlet UILabel *minuteLabel;
    IBOutlet UILabel *secondLabel;
    
    
    NSTimer *timer;
}

- (void)updateLabel;

@end
