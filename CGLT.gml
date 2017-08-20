#define area_quad
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var a = argument0;
var b = argument1;

return a * b;

#define area_circle
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var radius = argument0;
var homemadepi = 3.1415926535897932384626433832795028841971693993   //yum

return homemadepi * radius * radius;

#define peri_quad
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var a = argument0;
var b = argument1;

return 2 * (a+b);

#define todo
//todo

#define coordgeometry_midpoint
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var x1 = argument0;
var x2 = argument1;
var y1 = argument2;
var y2 = argument3;

var mx;
var my;

mx = x1 + x2;
my = y1 + y2;

return mx / 2 + my / 2;

#define coordgeometry_midpoint_singular
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var x1 = argument0;
var x2 = argument1;

var i = x1 + x2;

return i / 2;

#define anchor_x
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var pos = argument0;
var width = argument1;

if (pos == "left")
{
    return 0;
}

if (pos == "center")
{
    return room_width / 2 - width / 2;
}

if (pos == "right")
{
    return room_width - width;
}

#define anchor_y
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var pos = argument0;
var height = argument1;

if (pos == "top")
{
    return 0;
}

if (pos == "middle")
{
    return room_height / 2 - height / 2;
}

if (pos == "bottom")
{
    return room_height - height;
}

#define draw_rect
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var drawx = argument0;
var drawy = argument1;
var width = argument2;
var height = argument3;
var fill = argument4;

if (fill)
{
    fill = false;
}
else
{
    fill = true;
}

draw_rectangle (drawx, drawy, drawx + width, drawy + height, fill);

#define math_quickcorrect
//idk about this
var i;

return i / 2;

#define mouse_touching_rect
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var startx = argument0;
var starty = argument1;
var hitlength = argument2;
var hitheight = argument3;

if (mouse_x >= startx && mouse_x <= startx + hitlength && mouse_y >= starty && mouse_y <= starty + hitheight)
{
    return true;
}
else
{
    return false;
}

#define mouse_view_touching_rect
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var startx = argument0;
var starty = argument1;
var hitlength = argument2;
var hitheight = argument3;
var viewID = argument4;

if (mouse_x >= startx + view_xview [viewID] && mouse_x <= startx + view_xview [viewID] + hitlength && mouse_y >= starty + view_yview [viewID] && mouse_y <= starty + hitheight + view_yview [viewID])
{
    return true;
}
else
{
    return false;
}

#define debug_drawfps
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var realfps = argument0;
var drawx = argument1;
var drawy = argument2;
var width = argument3
var height = argument4;
var fill = argument5;
var fpscolour = argument6;

var drawfps
var fpstype;

if (realfps)
{
    drawfps = string(fps_real);
    fpstype = "real";
}
else
{
    drawfps = string(fps);
    fpstype = "supposed";
}

draw_rect (drawx, drawy, width, height, fill);
draw_set_color (fpscolour);
draw_text (drawx + width / 2 - string_width (drawfps) / 2, drawy + height / 2 - string_height (drawfps) / 2, fpstype + " fps" + drawfps);

#define debug_drawvar
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var todraw = argument0;
var drawx = argument1;
var drawy = argument2;
var width = argument3;
var length = argument4;
var textcolor = argument5;

draw_rect (drawx, drawy, width, length, true);
draw_set_color (textcolor);
draw_text (drawx, drawy, todraw);

#define ui_tooltip
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var message = argument0;
var startx = argument1;
var starty = argument2;
var hitlength = argument3;
var hitheight = argument4;
var textcolour = argument5;
var boxcolour = argument6;

depth = -200

if (mouse_touching_rect (startx, starty, hitlength, hitheight))
{
    if (mouse_x + string_width (message) > room_width)
    {
        draw_set_color (boxcolour);
        draw_rect (mouse_x - string_width (message) - 25, mouse_y + 25, string_width (message), string_height (message), true);
        draw_set_color (textcolour);
        draw_text (mouse_x - string_width (message) - 25, mouse_y + 25, message);
    } 
    else 
    {
        draw_set_color (boxcolour);
        draw_rect (mouse_x + 25, mouse_y + 25, string_width (message), string_height (message), true);
        draw_set_color (textcolour);
        draw_text (mouse_x + 25, mouse_y + 25, message);
    }
    
}



#define message_box
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var type = argument0;       //types of shapes drawn in window
var exittype = argument1;
var xpadding = argument2  
var ypadding = argument3;
var title = argument4;      //title of window
var message = argument5;    //message

if (type == "message")
{
    //TODO
}

//main window
draw_rectangle 
(
    anchor_x ("left", 0) + xpadding, 
    anchor_y ("top", 0) + ypadding, 
    anchor_x ("right", 0) - xpadding, 
    anchor_y ("bottom", 0) - ypadding, 
    false
);

draw_set_color (c_white);

//title
draw_text
(
    ((anchor_x ("left", 0) + xpadding) + ((anchor_x ("right", 0) - xpadding) - (anchor_x ("left", 0) + xpadding)) / 2) - string_width (title) / 2, 
    anchor_y ("top", 0) + ypadding + 30, 
    title
);

//message
draw_text_ext
(
    (anchor_x ("left", 0) + xpadding) + 10, 
    anchor_y ("top", 0) + ypadding + 80, 
    message,
    string_height (message), ((anchor_x ("right", 0) - xpadding) - (anchor_x ("left", 0) + xpadding) - 9)
);

//TODO draw other buttons


#define ui_button
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var xp = argument0;
var yp = argument1;
var width = argument2;
var height = argument3;
var label = argument4;

draw_rect (xp, yp, width, height, true);
draw_text (xp + xp / 2, yp + yp / 2, label);

if (mouse_x >= xp && mouse_x <= xp + length && mouse_y >= yp && mouse_y <= yp + width)
{
    if (mouse_check_button_pressed(mb_left))
    {
        show_message ("r");
    }
}

#define ui_tooltip_rview
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var message = argument0;
var startx = argument1;
var starty = argument2;
var hitlength = argument3;
var hitheight = argument4;
var textcolour = argument5;
var boxcolour = argument6;
var viewID = argument7;

depth = -200

xx = window_view_mouse_get_x(viewID);
yy = window_view_mouse_get_y(viewID);

if (mouse_view_touching_rect (startx, starty, hitlength, hitheight, viewID))
{
    if (xx + string_width (message) > window_get_width())
    {
        draw_set_color (boxcolour);
        draw_rect (xx - string_width (message) - 25, yy + 25, string_width (message), string_height (message), true);
        draw_set_color (textcolour);
        draw_text (xx - string_width (message) - 25, yy + 25, message);
    } 
    else 
    {
        draw_set_color (boxcolour);
        draw_rect (xx + 25, yy + 25, string_width (message), string_height (message), true);
        draw_set_color (textcolour);
        draw_text (xx + 25, yy + 25, message);
    }
    
}



#define forms_button


#define readme
/*
these scripts are really edgy, use them with caution.
make sure to call leveleditor_init() at the create event of any object
next, go into io_clearlevel and assign the with statements to whatever objects exist
finally, fiddle with the code, the code that is currently written is so specific
and is not really written for your needs. 

remember, these scripts don't solve the problem, they only provide 
the tools to make solving the problem easier.

a rundown on what each of these methods do

leveleditor_init initialises some global variables that the system is dependent on. make
sure to call this in any create event or else none of these scripts can work.

io_writelevel writes a file in the program's leveleditor subdirectory given some
meta data. this script returns null.

io_readlevel reads a specified file given the file name and returns a string array containing
the level name in [0], the creator name in [1] and the difficulty name in [2]. it's main
job is to assign variables preparing the system for io_importlevel

io_importlevel actually implements the level given that variables are set using io_readlevel
this script takes no arguments and returns null.

io_clearlevel is called in io_importlevel, it simply clears all the blocks visually and
in the leveldata array.

these features are still very very experimental. find bugs and annoy me on discord over
on https://discord.gg/bpF782r
*/

#define leveleditor_init
global.leveldata = ds_list_create();
global.importdata = ds_list_create ();
global.ii = 0;

#define io_writelevel
levelname = argument0;
creator = argument1;
difficulty = argument2;  

//hwan v1

if (!directory_exists ("editor"))
{
    directory_create ("editor");
}
  
var level;
level = file_text_open_write("editor\" + "level" + ".lvl");                 //todo, create custom level naming

file_text_write_string(level, "hwan v1");
file_text_writeln (level)
file_text_writeln (level)

//meta
file_text_write_string(level, "[Meta]");
file_text_writeln (level);
file_text_write_string(level, "name: " + levelname);                          //name
file_text_writeln (level);
file_text_write_string(level, "creator: " + creator);                 //creator
file_text_writeln (level);
file_text_write_string(level, "difficulty " + difficulty);          //difficulty

file_text_writeln (level)
file_text_writeln (level)

file_text_write_real (level, ds_list_size (global.leveldata));
file_text_writeln (level);

//gameplay
file_text_write_string (level, "[Objects]");
file_text_writeln (level)
for (var i = 0; i < ds_list_size (global.leveldata); i++)
{
    file_text_write_real (level, ds_list_find_value(global.leveldata, i));
    file_text_writeln (level)
}
file_text_write_string(level, "@"); 
  
file_text_close(level);


#define io_readlevel
//hwan v1

var readlevel = argument0;

if (!file_exists ("editor\" + readlevel + ".lvl"))
{
    show_message ("an error occured, could not find " + readlevel);
}
else
{       
    //opens existing file
    var level; 
    level = file_text_open_read ("editor\" + readlevel + ".lvl");

    //checks if file version is valid
    if (file_text_read_string (level) == "hwan v1")
    {
        file_text_readln (level);
        file_text_readln (level);
        file_text_readln (level);   //skip meta tag
        
        //assign meta variables
        levelname = string_delete (file_text_read_string (level), 1, 6);  
        file_text_readln (level);
        creator = string_delete (file_text_read_string (level), 1, 9);
        file_text_readln (level);
        difficulty = string_delete (file_text_read_string (level), 1, 11); 
        
        meta [0] = levelname;
        meta [1] = creator;
        meta [2] = difficulty;
        
        return meta;
        
        file_text_readln (level);
        file_text_readln (level);
        
        //read objects
        global.ii = file_text_read_real (level);
        file_text_readln (level);
                    
        for (var i = 0; i < global.ii; i++)
        {
            var Lid = file_text_read_real (level);               //get ID
            file_text_readln (level);
            var Lx = file_text_read_real (level);                //get x
            file_text_readln (level);
            var Ly = file_text_read_real (level);                //get y
            file_text_readln (level);
            ds_list_add (global.importdata, Lid, Lx, Ly);        //add to list
        }
        
        //close file
        file_text_close (level);
    }
    else
    {
        show_message ("either you are running an outdated save or you come from the future to lend us a newer version of hwan");
    }
}


#define io_clearlevel
//unmute code when in use
/*
with () instance_destroy ();
with () instance_destroy ();
ds_list_clear (global.leveldata);

#define io_importlevel
ds_list_delete (global.importdata, 0);

io_clearlevel();

var stampblock;
var a = 1;
var b = 2;

for (var i = 0; i < global.ii; i += 3)
{   
    
    if (ds_list_find_value(global.importdata, i) == 1)
    {
        stampblock = object3;
    }
    else if (ds_list_find_value(global.importdata, i) == 2)
    {
        stampblock = object4; 
    }
    else 
    {
        stampblock = nothing;
    }
    
    //show_message (ds_list_find_value (global.importdata, a));
    
    instance_create (
                    ds_list_find_value (global.importdata, a), 
                    ds_list_find_value (global.importdata, b), 
                    stampblock
                    );                    
    a += 3;
    b += 3;  
}

#define rpg_text
var text = argument0;
var drawspeed = argument1;


