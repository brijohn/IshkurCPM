1�D*  "� "�Gͼ�ͼ> ͸��3�ͼ�  �_2��A�{��{�Gͼ�!� _^#Vͼͼ�ͼ�ͼ͸���ͼ�j�ͼ� �!!
�'���)lG 1#&V(9*�,�.0�2	5,7)9�;�?�=�@*��	� =;$ =;$    $) \\\\ \\\\     \\ \\    \\
\\()\(  ) \\()\(  )\\(
)\(  ) \()\( )\\( )\() \(
)\(  ) \() \\( ) \( )\(
)\()\\ \()  \\(  ) \( )  \(
) \()\( ) \(  )  \(  ) \(

60k CP/M 2.2 copyright 1981 by Digital Research

$
\) Press RETURN for menu...( x screen$\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\ Osborne I Computer                     HELP 2.1  |
\__________________________________________________|
$
  press A...CP/M Assembler    N...MailMerge
	B...CBASIC            O...Osborne Utilities
	C...CP/M Commands     P...Printers/Printing
	D...Diskette Handling Q...Quitting Each Day
	E...File Extensions   R...The RESET Button
	F...Filenames         S...SuperCalc
	G...Graphics          T...Testing
	H...Programming Hints U...CP/M Utilities
	I...I/O Ports         V...External Video
	)J...Just Starting?(    W...WordStar
	K...Control Keys      X...Accessories
	L...Layout of Memory  Y...Modem Connection
	M...Microsoft BASIC   Z...Self Portrait

Press any LETTER key to receive help on a subject.

Press the ESCAPE key (labeled "ESC") to run CP/M.=;$
THIS HELP OF INTEREST TO PROGRAMMERS ONLY...

1. create 8080 assembly language source code using
   the "N" option in WordStar.
2. assemble the code by typing:

	ASM )filename.123 ( <RETURN>

)filename (is the name of your source file
)1 (is A or B and represents source code drive
)2 (is A, B or Z (to skip) for hex code drive
)3 (is A, B, X (to printer) or Z for source
	listing destination.$
CREATING AND RUNNING BASIC PROGRAMS:

CBASIC: To run a program type )CRUN2 program <cr>(
        The )program (must have the extension
        of ".INT" (see Screen F) for this to work.

        To create a program, type in the source
        code using the "non-document" option in
        WordStar in a file with the extension of
        ".BAS", then type )CBAS2 program <cr>(
        to create a program which can be run as
        described above.

Microsoft BASIC is described on Screen M.$
Most users need only learn a few CP/M commands:

\\\\\\\\\\\\\\\\\\\\\\\   \\\\\\\\\\\\\\\\\\\\\\\\\
\ )DIR <RETURN>(  gives |   \ )ERA filename <RETURN>( |
\ you  a list of  the |   \ erases  the  informa- |
\ files   that    are |   \ tion in )filename( from |
\ stored on  the disk |   \ the disk drive.  Make |
\ drive you are using |   \ sure  that  you  type |
\                     |   \ the name correctly!   |
\ )DIR X: <RETURN>( does|   \_______________________|
\ the  same for drive |
\ X  (substitute  the |   Other CP/M information is
\ appropriate letter) |   on screens E, F, O and U.
\_____________________|

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\ )REN newname=oldname <RETURN>( is used to give a  |
\ new name to an existing file.    Make sure you  |
\ type the filenames fully and correctly.         |
\_________________________________________________|$
 -keep diskettes away from magnets, smoke & food
 -never touch the surface of a diskette
 -never remove diskettes when red disk light is on
 -turn on the computer before inserting diskettes
 -take out diskettes before turning off computer

The diskettes used by the Osborne I should be soft
sector, 5 1/4 inch, single-sided, & single-density.
This is the information you need to tell a salesman
to insure that you buy the proper diskettes.

\\\\\\\\\\\\\\\\\\\\\\\\\\   \\\\\\\\\\\\\\\\\\\\\\
\     NEW DISKETTES:     |   \ If  you  receive  a|
\ 1. use COPY to get disk|   \ message like  "DISK|
\      ready for use     |   \ FULL" or "NO SPACE"|
\ 2. use COPY or PIP to  |   \ you need to get out|
\      transfer data     |   \ a fresh diskette.  |
\ )O SCREEN DETAILS THIS(  |   \ )CP/M CAPACITY = 92k(|
\________________________|   \____________________|$
A number of file extensions are commonly used:

  .ASM = assembly language program
  .BAK = file containing backup copy of data
  .BAS = BASIC program original
  .COM = command file (i.e., a program)
  .DAT = data file
  .DOC = document file (used with WordStar)
  .INT = ready-to-run CBASIC program
  .OVR = part of WordStar program, don't erase!
  .TXT = text file (same as ".DOC")

A file which has three dollar signs as an extension
is either a temporary file (WordStar sometimes makes
these for large documents) or a file which could not
be created properly (i.e., incomplete or incorrect).

You may invent your own file extensions, of course,
but we recommend that you use the above as a start.$
Valid CP/M filenames consist of three parts:

	    D : X X X X X X X X . X X X
	   /          |                \
    drive_/      filename         extension

\\\\\\\\\\\\\\\\\\\\\\\\\\\\  \\\\\\\\\\\\\\\\\\\\
\ )DRIVE IDENTIFIER(: must be|  \     EXAMPLE      |
\ either A or B followed by|  \                  |
\ a colon.   May be omitted|  \  B:OSBORNE.DOC   |
\ if you want current drive|  \    Drive=B       |
\ )FILENAME(: may be 1 to 8  |  \ Filename=OSBORNE |
\ characters in length     |  \ Extension=DOC    |
\ )EXTENSION(: may be 0 to 3 |  \__________________|
\ characters in length     |
\__________________________|

Filenames and extensions cannot include: .,;:=*[]$
THIS HELP OF INTEREST PRIMARILY TO PROGRAMMERS

The Osborne I is capable of displaying a number of
special characters.  The following character
sequences invoke each special display mode:

	start underline .... <ESC> 1
	stop underline ..... <ESC> m
	start half intensity <ESC> )
	stop half intensity  <ESC> (
	start graphics ..... <ESC> g
	stop graphics ...... <ESC> G

graphics character set:g	
G

To print the graphics you see on the screen you'll
need a printer that has graphics capabilities and
software to translate the display to the printer.$
FOR EXPERIENCED BASIC PROGRAMMERS ONLY

The following is useful information to keep in mind
when programming:

printing a decimal
)
  26	clears the screen
  30	homes the cursor
  7 	rings the bell
  27,61,YPOS,XPOS+32 moves cursor to XPOS,YPOS
  27,83,YPOS,XPOS+32 sets upper left corner$
To make the Osborne I communicate with accessories,
you use the I/O ports.    Fortunately,  most of the
programs which accompany your Osborne I have built-
in  instructions which tell  the computer where  to
send  information  for  your  accessories  (like  a
printer, for instance).

To use a printer which is attached to the  "SERIAL"
port (see screen Z), you must first run the program
on your CP/M 2.2 diskette named "SETUP" if the baud
rate is 300.  The standard baud rate on the Osborne
is 1200.  You run the SETUP program by putting your
CP/M system diskette in the left-hand drive and
typing )SETUP( then pressing the RETURN key.

SETUP allows you to tell your Osborne I to look    
for a printer connected to the IEEE-488 interface. 
See chapter 2 in the Osborne Reference Manual for  
further information.$
If you're a newcomer to computing,  the  very  first
thing  you  should have done is read the  first  two
chapters of the Osborne Reference Manual.     If you
haven't done so already, do so now.

Next,  you  should use this help program to get used
to sitting at the keyboard and typing commands which
the computer will respond to.

Finally,  use the tutorial section of the manual  to
learn how to use the programs that are of interest
to you.

           \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
           \  Congratulations on your wise |
           \  purchase.  Don't hesitate to |
           \  ask your dealer for advice   |
           \  on using your Osborne I.     |
           \_______________________________|$
CP/M recognizes a number of special functions, which
are  invoked  by holding down the control key  while
simultaneously pressing another key.   The most fre-
quently used ones are:

 control C = restart CP/M or interrupt program
 control P = turn printer on, turn printer off
 control S = halt display (any key restarts)
 control X = delete command being typed

WordStar also used control characters.  In fact, all
commands in WordStar are invoked using control keys.
See the reference section on WordStar in the Osborne
Reference Manual for a complete listing of commands.

	GENERAL CONTROL KEYS

 control <-- = move display to the left
 control --> = move display to the right
 control [   = reset display to original position$
FFFF \\\\\\\\\\\\\\\\\ In addition  to the
     \               | main  bank  of  RAM
     \  video RAM    | shown  at the left,
F000 \_______________| there is a "shadow"
     \               | bank, where the ROM
     \    CBIOS      | & I/O ports reside.
E400 \_______________| For  more  details,
     \               | see the appropriate
     \     CP/M      | chapter in manual.
C600 \_______________|
 ^   \               |
 |   \     TPA       | MEMORY USAGE:
50k  \   program     |
 |   \     area      | WordStar....44k
 v   \               | MBASIC......24k
0100 \_______________| CBASIC......18k
     \               | SUPERCALC...40k
     \ CP/M Reserved | UTILITIES...<16k
0000 \_______________|$
Microsoft BASIC is  a  computer  language that  is
simple to learn, yet capable of performing complex
tasks as well.

To load Microsoft BASIC into  the computer for use,
you type:  )MBASIC( then press the RETURN key, or use
the automatic program option in  this help program.

To run Microsoft BASIC and  a  program  written  in
that language, you type: )MBASIC filename( then press
the RETURN key.    Some instructions that accompany
a  program  may  also  tell  you to type some extra
"parameters" following the )filename(, as in:

)	MBASIC filename /F:3 /M:48000($
MailMerge is part of WordStar,  and  as  such,  must
be  on  the  same  diskette  as  WordStar to operate
correctly.

What  MailMerge  does  is  take  information  stored
in a data file (like names and addresses), and merge
that information to any word processing document you
might create using WordStar.

Some examples of MailMerge's use:

	o  form letters
	o  standardized clauses in contracts
	o  printing several documents together
	o  multiple copies of a document$
An important Osborne-supplied utility program that
performs two important functions is supplied on the
CP/M system diskette.  The COPY program performs:

 Disk Formatting -- the preparation of new, unused
	             diskettes for use on the
		     Osborne 1 computer.

 Disk Copying --  makes duplicates of diskettes.

To use COPY, type its name and then follow the
instructions that appear on the screen.$                                                                                                                                                                                         $
The Osborne I features a "serial RS232" port for use
with  most common printers.   If you have a properly
configured  cable, it  should  plug  right into  the
connector  in the lower left-hand front of the  main
computer unit labeled "SERIAL RS232". Don't ever try
to force a connector.

The normal commands for printing are:

CP/M:     control P      turns printer on/off
          PIP LST:=)filename.ext( prints a file
MBASIC:   LLIST          lists a program
          LPRINT         prints a line
WORDSTAR: "P" option     prints a file
          "M" option     prints file and data$
Each time you are going to stop using your Osborne I
for more than a few minutes, you should use this
procedure:

 1. Select the EXIT option for the software you are
    using ("X" or "^KX" in WordStar, for example).
 2. Make a copy of the diskette you were using,
    if desired.
 3. Remove your diskettes from the drives.
 4. Turn off the computer.
 5. Turn off your accessories (if any).$
press RESET if: a message on the display tells you
		to do so and you are COMPLETELY done
		saving all information you wish to
		have access to later. You might also
		press RESET if you are SURE that the
		machine is behaving abnormally AND
		the threat of losing ALL your files
		is greater than the risk of losing
		the one you're currently using.

		YOU CANNOT RECOVER DATA ONCE RESET
		HAS BEEN PRESSED!

don't press RESET if: the red light on one
		of the disk drives is on, you have
		not saved your data yet, or if you
		are not sure why you're doing it.$
SuperCalc is a "number processor."  By this, we
mean that you use SuperCalc to create,  change,
delete,  and  manipulate  rows  and  columns  of
numeric information.  Any process which requires
you to calculate a result (or results) is a
candidate for SuperCalc use.

SuperCalc is loaded and run using the automatic
facility built into this help program (press the
"ESC" key when you see the main menu).

Among the tasks for which SuperCalc can be used:)
	stock market analysis
	finance charge calculation
	statistics
	break-even analysis
	teacher's gradebook keeping$
Your Osborne I has a built-in diagnotics program.
To use it, press the RESET button, then type a
control-D.  You may then:

   D - DISK TEST: use a brand new diskette
	that you've just formatted.
   K - KEYBOARD TEST: type characters and
	watch the monitor to make sure they're
	displayed.
   M - MEMORY TEST: continuously tests your
	computer's memory.  The changing character
	at the top of the screen is normal.

If you find the test messages cryptic or don't
understand something, have your Osborne dealer
run the tests for you.$
A  number of utility  programs are included on  your
CP/M system diskette.  Consult your manual for exact
details on how to use each.

PIP  - copies files from one diskette to another, or
	from one accessory or diskette to another.

STAT - displays or changes the status of the files
	on your diskette.

If you're an advanced user, you might also want to
look at DDT, DUMP, ED, LOAD, MOVCPM, SUBMIT, SYSGEN
and XSUB.  Beginners don't need to bother with
reading about anything except PIP and STAT.$
If you have purchased a 12" monitor for use with
your computer, you will have been provided with
a cable and a small plug-like device.  When you
use the external monitor,  its  cable should  be
plugged into the connector labeled "EXT.VIDEO" on
the lower-right front of the Osborne I.

During those times when you are not using your
external monitor, unplug the cable and replace
it with the small plug-like device you were
provided.

WARNING: if there is not something plugged into
the "EXT.VIDEO" connector, the computer will not
function properly and YOU MAY EVEN DAMAGE YOUR
COMPUTER.$
WordStar is a word processing program which makes
full use of your Osborne I's features.  With
WordStar you will be able to create professional-
looking letters and other documents quickly and
efficiently.

You run WordStar by booting the WordStar disk
or by first loading CP/M, replacing that disk
with the WordStar one and typing )WS <cr>(.

To help you learn how to use WordStar, the copy
which has been provided with your Osborne I has
been configured to display "help" messages at the
top of the screen while you are using WordStar.$
It is possible to use your Osborne I to transfer
information via the telephone if you have bought
the optional "modem" accessory with your computer.
The modem plugs into the connector at the far left
bottom of the Osborne I, with the other end to be
connected to your telephone jack or telephone
handset (depending upon which you purchased).

A full description of how to use your modem
is provided with it.  Do not lose this information
as it is not repeated in the Osborne Reference
manual.$
Accessories planned for the Osborne I*

	12" display monitor
	double density disk option
	battery pack for portable operation
	direct connection modem for communications
	Osborne Authorized software releases

*Contact your dealer for information regarding
availability of these items.$
   ______________________________________________
  / _______________              _______________ \
 /  |    _____    | ____________ |    _____    |  \
|   |    |   |    | |          | |    |   |    |   |
|   |----|___|----| |          | |----|___|----|   |
|   | o )DRIVE A(   | |  )5 INCH(  | | o )DRIVE B(   |   |
|   |_____________| | )MONITOR(  | |_____________|   |
|   _______________ |          | _______________   |
 \  |)DISKETTE SLOT(| |__________| |)DISKETTE SLOT(|  / 
 |  |_____________|              |_____________|  | 
 /                            )BRT DIM    RESET(    \
|                      [____] (o)(o)     (o)       |
|    [_] [____] [____] )KEYBOARD(     [___]   [_]    |
|  )MODEM SERIAL  IEEE              EXT.VID  BATT(   |
\_____________________________________________th__/ 

		THE OSBORNE I$ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � that  is
simple to learn, yet capable of performing complex
tasks as well.

To load Microsoft BASIC into  the computer for use,
you type:  )MBASIC( then press the RETURN key, or use
the automatic program option in  this help program.

To run Microsoft BASIC and  a  program  written  in
that language, you type: )MBASIC filename( then press
the RETURN key.    Some instructions that accompany
a  program  may  also  tell  you to type some extra
"parameters" following the )filename(, as in:

)	