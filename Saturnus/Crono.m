//
//  Crono.m
//  Saturnus
//
//  Created by Amador on 09/08/12.
//  Copyright (c) 2012 Amador. All rights reserved.
//

#import "Crono.h"

@implementation Crono

-(void)countup {
    
    MainInt += 1;
    
    minutos=MainInt/60;
    segundos=MainInt%60;
    
    if (segundos<10) {
        
    visor.stringValue = [NSString stringWithFormat:@" %i : 0%i", minutos, segundos];
    
    }
    
    
    if (segundos>=10) {
        visor.stringValue = [NSString stringWithFormat:@" %i : %i", minutos, segundos];
    }
}

-(IBAction)start:(id)sender {
    
    [timer invalidate];
    timer= nil;
    
    minutos = 0;
    segundos = 0;
    MainInt = 0;
    
    visor.stringValue = [NSString stringWithFormat:@" %i : 0%i", minutos, segundos];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
             
                                             target:self selector:@selector(countup)userInfo:nil repeats:YES];
    
}


-(IBAction)pause:(id)sender {
    
   
        [timer invalidate];
        timer= nil;
            
    

}


-(IBAction)continua:(id)sender {
    
    [timer invalidate];
     timer= nil;
    

    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
             
                                             target:self selector:@selector(countup)userInfo:nil repeats:YES];
    
}



- (IBAction)abrirInfo:(id)sender {
    
    miControl = [[NSWindowController alloc] initWithWindowNibName:@"Info"];
    [miControl showWindow:self];
    
}

- (IBAction)abrirUrl:(id)sender {
    
    
   [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://ans.com.es"]];
    
}




@end
