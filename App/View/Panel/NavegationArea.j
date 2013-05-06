

@import <AppKit/CPCollectionView.j>


@implementation NavegationArea : CPView
{
	
}

- (id) initWithContent():contentView
{
	self = [super initWithFrame:CGRectMake(0.0, 0.0, 150.0, CGRectGetHeight([contentView bounds]) - 250.0)];
    
    if(self){

    	[self setBackgroundColor:[CPColor lightGrayColor]];
    	// This view will grow in height, but stay fixed width attached to the left side of the screen.
    	[self setAutoresizingMask:CPViewHeightSizable];
    }

    return self;

}

@end
