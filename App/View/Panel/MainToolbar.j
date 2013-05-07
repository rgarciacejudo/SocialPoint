

@import <AppKit/CPToolbar.j>
@import "FontView.j"


var AddToolbarItemIdentifier = "AddToolbarItem",
    CopyToolbarItemIdentifier = "CopyToolbarItem",
     RemoveToolbarItemIdentifier = "RemoveToolbarItem",
     UndoToolbarItemIdentifier = "UndoToolbarItem",
     RedoToolbarItemIdentifier = "RedoToolbarItem",
     FontToolbarItemIdentifier = "FontToolbarItem";

@implementation MainToolbar : CPToolbar
{

}

- (id) initWithIdentifier(CPString):anIdentifier
{
    self = [super initWithIdentifier:anIdentifier];
    if(self){
            [self setDelegate:self];
            [self setVisible:YES];
    }
    return self;
}

// Return an array of toolbar item identifier (all the toolbar items that may be present in the toolbar)
- (CPArray)toolbarAllowedItemIdentifiers:(CPToolbar)aToolbar
{
   return [AddToolbarItemIdentifier,CopyToolbarItemIdentifier, RemoveToolbarItemIdentifier,UndoToolbarItemIdentifier,RedoToolbarItemIdentifier,
            CPToolbarSeparatorItemIdentifier, FontToolbarItemIdentifier];
}

// Return an array of toolbar item identifier (the default toolbar items that are present in the toolbar) CPToolbarFlexibleSpaceItemIdentifier
- (CPArray)toolbarDefaultItemIdentifiers:(CPToolbar)aToolbar
{
   return [CPToolbarSeparatorItemIdentifier,AddToolbarItemIdentifier,CopyToolbarItemIdentifier, RemoveToolbarItemIdentifier,
    CPToolbarSpaceItemIdentifier,CPToolbarSeparatorItemIdentifier,UndoToolbarItemIdentifier,RedoToolbarItemIdentifier,CPToolbarSpaceItemIdentifier,
    CPToolbarSeparatorItemIdentifier,FontToolbarItemIdentifier,CPToolbarSeparatorItemIdentifier,AddToolbarItemIdentifier];
}

- (CPToolbarItem)toolbar:(CPToolbar)aToolbar itemForItemIdentifier:(CPString)anItemIdentifier willBeInsertedIntoToolbar:(BOOL)aFlag
{
    var toolbarItem = [[CPToolbarItem alloc] initWithItemIdentifier:anItemIdentifier];

    //@try{
        var image = [[CPImage alloc] initWithContentsOfFile:"Resources/icon/"+anItemIdentifier+".png" size:CPSizeMake(32, 32)];
        if(image){
            [toolbarItem setImage:image];
            [toolbarItem setMinSize:CGSizeMake(45, 32)];
            [toolbarItem setMaxSize:CGSizeMake(45, 32)];
        }
    /*}@catch (CPException e) {
    }*/
    
    switch(anItemIdentifier){
        case AddToolbarItemIdentifier:
            [toolbarItem setLabel:"Agregar"];
        break;
        case CopyToolbarItemIdentifier:
            [toolbarItem setLabel:"Copiar"];
        break;
        case RemoveToolbarItemIdentifier:
            [toolbarItem setLabel:"Remover"];
        break;
        case UndoToolbarItemIdentifier:
            [toolbarItem setLabel:"Deshacer"];
        break;
        case RedoToolbarItemIdentifier:
            [toolbarItem setLabel:"Rehacer"];
        break;
        case FontToolbarItemIdentifier:
            fontView =[[FontView alloc] initWithFrame:CGRectMake( 0,0, 360,50) ];
            [toolbarItem setView:fontView];
            [toolbarItem setLabel:"Fuente"];
            [toolbarItem setMinSize:CGSizeMake(360, 32)];
            [toolbarItem setMaxSize:CGSizeMake(360, 32)];
        break;
    }
     
    return toolbarItem;
}

@end
