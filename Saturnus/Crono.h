//
//  Crono.h
//  Saturnus
//
//  Created by Amador on 09/08/12.
//  Copyright (c) 2012 Amador. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Crono : NSObject

{

IBOutlet NSTextField *visor;

NSTimer *timer;
NSWindowController *miControl;
    

int MainInt, minutos, segundos;

    
}

-(IBAction)start:(id)sender;

-(IBAction)pause:(id)sender;

-(IBAction)continua:(id)sender;

- (IBAction)abrirInfo:(id)sender;

- (IBAction)abrirUrl:(id)sender;






@end
