!-*- mode: f90; indent-tabs-mode: nil; coding: utf-8; show-trailing-whitespace: t -*-
!
!     file: over54.for
!
!
!     subroutine over54.
!
subroutine over54
  implicit real*8 (a-h, o-z), integer*4 (i-n)
  include 'blkcom.ftn'
  include 'volt45.ftn'
  if ( iprsup  .ge.  1 ) write ( lunit6, 4567 )
4567 format ('  "begin module over54." ')
  if ( nchain  .ne.  54 )   go to 99999
  n1 = kill - 150
  go to (6151 , 6152, 6153, 6154, 6155, 6156, 6157, 6158, 6159, 6160, 6161 , 6162, 6163, 6164, 6165, 6166, 6167, 6168, 6169, 6170, &
       6171 , 6172, 6173, 6174, 6175, 6176, 6177, 6178, 6179, 6180, 6181 , 6182, 6183, 6184, 6185, 6186, 6187, 6188, 6189, 6190, &
       6191 , 6192, 6193, 6194, 6195, 6196, 6197, 6198, 6199, 6200), n1
6151 write (lunit6, 7151)
7151 format (5x, "The present data case has a positive parameter  'nenerg'  (read from columns 65-72 of the floating-point",/, &
          5x, "miscellaneous data card), indicating that random switch closing times for  'statistics'  switches are to be",/, &
          5x, "generated.   Since parameter  'isw'  was punched with the key request value  '4444' ,   Only an analysis of the",/, &
          5x, 'switch closing times is desired (no EMTP simulations are to be performed).   but such an analysis is not possible, ')
  write (lunit6, 7251)  lstat(14), lstat(15)
7251 format (5x, 'due to a shortage of available working space in memory.   Only', i6,  '  integer cells of   /label/   are',/, &
          5x, 'available, while', i7,  '  such cells are required in order to execute this data case.   A formula for this',/, &
          5x, 'required minimum integer storage space is ....',/, 30x, 'min  =  ( 3 + ns*(ns-1)/2 ) * nc',/, &
          5x, "where  'ns'  is the number of  'statistics'  switches,  and  'nc'  is the number of compartments of the ")
  write (lunit6, 7351)  lstat(16), lstat(13)
7351 format (5x, 'cumulative distribution function tabulation.   For this data case,   ns =', i4,  ' ,   while   nc =', i4, ' ,',/, &
          5x, "with the latter figure equal to twice parameter  'sigmax' divided by  'aincr'  (see  'statistics'  miscellaneous",/, &
          5x, "data card parameters).   in order to run this test of the random number generator, either the number of  'statistics'",/, &
          5x, 'switches or tabulation compartments must be appropriately decreased, or the EMTP must be re-dimensioned so as ')
  write (lunit6, 7451)
7451 format (5x, 'to provide for more working space in memory.   If the latter course is taken, it is recommended that all of',/, &
          5x, 'increased space be confined to lists number  5,  7,  8,  13 ,  14,  or  15,  in which case there is no waste or ',/, &
          5x, 'loss (the increase is  100 per cent effective). ')
  go to 6220
6152 write (lunit6, 7152)  lstat(14)
7152 format (5x, 'execution of the line constants program can not be allowed to continue, due to a shortage of core storage for',/, &
          5x, 'use as tabular working space.   The EMTP is variably-dimensioned, of course, with the present size of   /label/',/, &
          5x, 'simply insufficient to allow for even the solution of a single-conductor problem.   Available dimensioned working',/, &
          5x, "space in subroutine  'vdov44'  is", i5,  '  cells.   Fitting all matrices into this constraint requires that ')
  write (lunit6, 7252)  lstat(15)
7252 format (5x,  'a conductor limit of', i5,  '  conductors be imposed.   The user must redimension the EMTP in order to',/, &
          5x, 'provide for more   /label/   storage (with the distribution of this storage among the different lists being',/, &
          5x, 'immaterial), and resubmit the job. ')
  go to 6220
6153 write (lunit6, 7153)  bus1
7153 format (5x, 'As part of the tacs data which has now been completely read by the EMTP, the user has employed the same six-',/, &
          5x, 'character alphanumeric name  ', "'", a6,  "'", '  for two different tacs variables.   Unfortunately for the user,',/, &
          5x, 'homographs are to be exiled for life from the EMTP world.   Yet should this succinct characterization be less',/, &
          5x, 'than perfectly clear, suffice it to say that it is a violation of EMTP rules for the user to apply the same  a6 ')
  write (lunit6, 7253)
7253 format (5x, 'name to what are supposed to be two distinct tacs variables. ')
  go to 7421
7421 write (lunit6, 7521)
7521 format (/, 5x, 'Since the user is having trouble with 6-character tacs variable names, it is perhaps worth qualifying the',/, &
          5x, 'preceding error text which complains about an unidentifiable name that is associated with a certain tacs component',/, &
          5x, 'or data class.   All that is really involved here is a spelling comparison with other usages of the same variable',/, &
          5x, "name.   When for some particular tacs component a given name  'name1 '  can not be found in a table where it ")
  write (lunit6, 7621)
7621 format (5x, 'belongs, the EMTP says that the former is unrecognizable.   Yet, as used with the component explicitely',/, &
          2 5x, "mentioned in the message,   'name1 '   may in fact be spelled exactly as the user intended.   It may be the table",/, &
          4 5x, 'being searched which is in error, due to faulty spelling of the variable name on some other data card (which',/, &
          5x, 'was the usage that generated the table entry).   Hence the user should look at other data cards for mis-spelling of ')
  write (lunit6, 7721)
7721 format (5x, 'the name in question, if the spelling as printed in the above error text is actually as the user wanted it. ')
  write (lunit6, 7821)
7821 format (/, 5x, 'then too, while talking about spelling, it might be a good idea to emphasize what is involved.   all six-',/, &
          5x, 'character variable names are  a6  fortran alphanumeric information.   When printed out within error messages, the',/, &
          5x, 'six characters in question are delineated by a leading and a trailing quotation or apostrophe mark.   Position',/, &
          5x, "of imbedded blanks is indeed crucial, then.   For example,   'raver '  and  ' raver'  are completely different, ")
  write (lunit6, 7921)
7921 format (5x, 'distinct 6-character names, as far as the EMTP is concerned.   EMTP names (including those of tacs)',/, &
          5x, "consist of an ordered string of 6 characters, with 'blank ' being a character like any other one.   Two variable",/, &
          5x, 'names are equal if and only if both characters of any character position are equal for the two names, for all',/, &
          5x, 'possible character positions  1, 2, .... 6 . ')
  go to 6220
6154 write (lunit6, 7154)
7154 format (5x, "The EMTP has been inputting data for a  'Semlyen setup'  case, and has discovered an inconsistency or",/, &
          5x, 'illegality in the numerical values which were punched by the user.   Specifically, ')
  write (lunit6, 7254)  lstat(13), lstat(14)
7254 format (5x, "data parameters  'iotx' ,  'ioss' ,  and  'iofl' are required to be octal (base-8) numbers.   Digits",/, &
          5x,  " '8'  and  '9'  are thus illegal (nonexistant), and must not be used.   But the field for number",  i4,   '   among',/, &
          5x, 'these was punched with the value',  i6,  ' .   naughty, naughty. ')
  go to 6220
6155 write (lunit6, 7155)   lstat(13), lstat(14)
7155 format (5x, "Within the computations for a  'semlyen setup'  data case, the iterative procedure which is used for fitting",/, &
          5x, 'the characteristic-admittance step-response has failed to converge.   This fitting is done by means of an',/, &
          5x, 'algebraic adjustment in the frequency domain, not the more well-known fitting of exponentials in the time domain.',/, &
          5x, 'the iteration limit of',  i5,  "   (parameter  'nitery')  was reached for mode number",  i4,  '   without ')
  write (lunit6, 7255)  flstat(13), flstat(14)
7255 format (5x,  "satisfying tolerances  'epsyc'  and  'epsn' ,   which have values",    e15.3,    '   and',    e15.3,   ' ,',/, &
          5x, "respectively.   the user is reminded that these just-mentioned  'Semlyen setup'  parameters are under user",/, &
          5x, "control by means of a special  'tolerances'  request-word card, if this will help any.   Alternatively, did the",/, &
          5x, 'user perhaps already redefined default values by means of such a card, thereby making convergence impossible,',/, &
          5x,  'the EMTP wonders. ')
  go to 6220
6156 write (lunit6, 7156)  lstat(14)
7156 format (5x, "The present   'Semlyen setup'   data case has proven to be too much for the EMTP logic, for mode number",  i4, ' . ')
  if ( lstat(19) .eq. 40080)  go to 7556
  if ( lstat(19) .eq. 4545 .or. lstat(19) .eq. 4557 ) go to 7956
  write (lunit6, 7256) lstat(15)
7256 format (5x, ' The toe of the step response has been located, based on the speed of the highest frequency specified . ',/, &
          5x, "The time step used in the fitting process is established by a technique determined by parameter 'kfit'",/, &
          5x, 'for which the user has supplied a value of ', i2, ' .' ,/, &
          5x,  'if  "0"    the time step is simply toe time / noo  ',/, &
          5x,  'if  "1"    the time step is sized to put 25" of the specified "npoint" points between the toe',/, &
          16x,  'and the time at which the value is 2/3 .',/, &
          5x, 'if  "2"    the time step is sized to put 5" of the specified "npoint" points between the 1/3 and the 2/3  times . ')
  write (lunit6, 7356) lstat(11)
7356 format (5x, 'Determining the 1/3 point or the 2/3 point may not be possible because of noise at small times in inverse Fourier routines . ',/, &
          5x, 'This run has suffered from this difficulty', 5x, i4, ' iterations have failed to locate one of these points . ',/, &
          5x, 'The solutions available are "  "a" different value of "kfit", ',/, &
          5x,  '"b" a higher number for "nfit" which controls the permissible no. of iterations,  ',/, &
          5x, '"c" a higher frequency range and/or more frequency points in an attempt to improve the accuracy of the ifr . ')
  write ( lunit6, 7456 ) flstat(11), flstat(16), lstat(10)
7456 format (5x, 'other parameters relevent to this non-converged iteration are as follows : ',/, &
          5x, 'the initial size of the time increment was ', e15.5,  ' .  The target value was ', e15.5  ,/, &
          5x,  'the number of points "npoint" as requested by the user =', i4,  ' . ')
  go to 6220
7556 write (lunit6, 7656)  lstat(13)
7656 format (5x, "The technique for fitting of the admittance step response has been determined by the first column in parameter 'kfit'",/, &
          5x, 'for which the user has supplied a value of', i2, ' . ')
  write (lunit6, 7756)  flstat(16)
7756 format (5x, "if '1', the user has requested a time domain fit, which requires the program to determine the time period to be fitted.",/, &
          5x, 'in this process the program searches a limited time frame for a change in response of ', f4.2,  ' of the initial value .',/, &
          5x,  'Tthe program has been unable to locate this value, either because the period searched was too short,',/, &
          5x,  'or because the ift routine failed to produce it.',/, &
          5x,  'a wider frequency range or more numerous frequency data may improve the ift result.',/, &
          5x,  "a value of '2' will result in a preliminary frequency domain fit to determine the time period. ")
  write (lunit6, 7856) flstat(11),flstat(13),lstat(10)
7856 format (5x, 'Other parameters relevant to this search failure are as follows: ',/, &
          5x,  'the initial size of the time increment was ',e15.5,  ' .   The time zone searched was ',e15.5 ,/, &
          5x,  "the number of points 'npoint' as requested by the user = ", i4)
  go to 6220
7956 write(lunit6,8056)
8056 format(5x, 'The Newton-Raphson algorithm, used to fit the line response with exponentials, is in trouble. ',/, &
          5x, 'either the jacobian matrix is singular, or the initial guess made by the program is not close enough.',/, &
          5x,  'after carefully checking data, a consultation with program maintenance is indicated. ')
  go to 6220
6157 write (lunit6, 7157)
7157 format (5x, "The 'Semlyen setup'  data case now under consideration requires that modal step responses be computed first,",/, &
          5x, 'by inverse fourier transformation.   This procedure has now been completed. ')
  if ( lstat(14)  .eq.  0 )   go to 7457
  write (lunit6, 7257)  lstat(14), lstat(15),  flstat(14)
7257 format (5x, 'But the step response for mode number',  i4, '   is physically invalid.   In theory, this should begin   ',/, &
          5x, 'at zero, and should rise monatonically to unity, as time goes to infinity.   But the value for the final',/, &
          5x, 'point number',  i5,  '   is',    e14.3,     ' ,   which is nowhere near unity.   In fact, this final value does ')
  write (lunit6, 7357)  flstat(15)
7357 format (5x, "not even reach the threshold  'fit2z' ,   which equals",    e14.3,     ' .    the step response is thus',/, &
          5x, 'invalid, and execution will not be allowed to continue. ')
  go to 6220
7457 write (lunit6, 7557)  lstat(16), lstat(15), lstat(17), flstat(14), flstat(15), flstat(16)
7557 format (5x, 'But between points number',  i6,  '   and',  i6, ' ,   the rise to unity is not characterized by',/, &
          5x,  'monotone-decreasing slope (concave downward).   At point number',  i6,  " ,   there is trouble,   let's denote",/, &
          5x,  "this point by  'k' .   Values for points  k-1, k, % k+1 then are  ...",     3e14.5,    '  .')
  go to 6220
6158 write (lunit6, 7158)
7158 format (5x, "The data case under study involves the conversion of EMTP data cards for a saturable  'transformer'  to",/, &
          5x, "(r), (l)  format (type-51, 52, ... ).   This is a feature of supporting routine  'xformer' .   But there is",/, &
          5x, "trouble with the user's  'transformer'  data which is now being read.   Specifically, ... ")
  n1 = lstat(14)
  if ( n1  .eq.  1 ) write (lunit6, 7258)  bus5
7258 format (8x, 'The EMTP is just beginning a new conversion case, and it expects the last-read data card (since non-blank) to',/, &
          8x, "have key word  'transformer'  punched in columns  3-14 .   But columns  3-8  contain   ",  "'", a6,  "'", ' . ')
  if ( n1  .eq.  2 ) write (lunit6, 7358)
7358 format (8x, 'The data card for winding number one can not be located.   Column  2  must be punched with unity, of course,',/, &
          8x, "and column  1  must be either blank or be punched with zero.   Reread the rules governing saturable  'transformer'",/, &
          8x, 'component, and correct the data accordingly. ')
  if ( n1  .eq.  3 ) write (lunit6, 7458)
7458 format (8x, "Program working space allows for a maximum of  19 windings,   which has been exceeded by the user's data. ")
  go to 6220
6159 write(lunit6,7159)  kill
7159 format(5x, 19hinvalid kill code =, i5 )
  go  to  6220
6160 write (lunit6, 7160)  lstat(14)
7160 format(5x, 'The frequency card containing the number of decades and the number of frequencies per decade',/, &
          5x, 'ik and ips respectively, for the inverse Fourier transform',/, &
          5x, 'has requested a total number of frequencies greater than the available storage of ', i5,/, &
          5x, 'surely with a geometric progression of frequencies, this many steps is not necessary. ')
  go to 6220
6161 write (lunit6, 7161)
7161 format (5x, " The last-read data card bears the special request word  'transformer '   in columns  3-14, and is the first",/, &
          5x, 'of several cards used to define a saturable transformer component.   But the user has failed to punch columns',/, &
          5x, "39-44  (field  'bustop' )   with a non-blank 6-character (a6) alphanumeric name.   This is the node name for the",/, &
          6 5x, 'extra, internal node of the saturable transformer component, at the top of the magnetizing branch (see transformer ')
  write (lunit6, 7261)
7261 format (5x, "equivalent circuit in the EMTP user's manual).   The data field  'bustop'  for each saturable transformer",/, &
          5x, 'component must be non-blank, and all should be unique --- different from each other, and also different from all',/, &
          5x, 'other EMTP network nodes. ')
  go to 6220
6162 write (lunit6, 7162)  ipunch
7162 format (5x, "The user is running a  'line constants'  derivation in which the EMTP automatically loops over the different",/, &
          5x, 'frequencies of interest.   On the frequency card which requested this mode of program execution, the field for',/, &
          5x, "EMTP variable  'ipunch'  (columns  66-68 ,   read using i3  format)  contains an illegal numerical value.",/, &
          5x, 'only values  0,  1,  2,  3,  88,  and  89  are recognized as being legitimate, although a value of  ', "'", i3,  "'", '  was ')
  write (lunit6, 7262)
7262 format (5x,  "read from the user's frequency card.   Correct this value, and try again. ")
  go to 6220
6163 write (lunit6, 7163)  lstat(14)
7163 format (5x,  'The last-read data card is for a tacs source of type', i5,  ' (type code as read from columns 1-2 of the source',/, &
          5x, "card).   But no valid EMTP electric-network node names were specified by the user on either a preceding   'tacs",/, &
          5x, "EMTP sources'   card,  or on a preceding   'tacs outputs' card.   Hence the EMTP concludes that there is no",/, &
          5x, 'electric network, that the present problem being inputted is a tacs stand-alone case.   But tacs source types ')
  write (lunit6, 7263)
7263 format (5x, ' 90,  91,  etc.  all come from the electric-network side of the EMTP, by definition.   In sum, the user has',/, &
          5x, 'requested that a tacs source be determined by a non-existent part of the problem.   This discrepancy must be',/, &
          5x, 'corrected, before execution will be allowed to continue. ')
  go to 6220
6164 write (lunit6, 7164)
7164 format (5x, '  Unused.     ')
  go to 6220
6165 write (lunit6, 7165)
7165 format(5x, 'During calculation of eigenvalues and eigenvectors by the power method, ',/, &
          5x, 'the iteration count has exceeded "nieig".  This limit and the corresponding tolerance "epseig"',/, &
          5x, 'may be changed by a "tolerances" card. ')
    go to 6220
6166 write (lunit6, 7166)  csepar, chcont
7166 format (5x, 108hthe last-read data card is assumed by the EMTP to
1   have free-format data on it, due to the presence of one or    ,/, &
2 5x,  28hmore separator characters  ',  a1,
3  38 h'  or  continuation-card characters  ',  a1,
4  42 h' .   well, EMTP control was within module             ,/, &
5 5x, 114h'frefld'  of utpf overlay  (main00, -1)  when the data ra
6   n out.   that is, control was looking for more data items   )
    write (lunit6, 7266)
7266 format (5x, 110hthan have been punched on the card.   the user sho
1   uld first verify that the data card in question was intended  ,/, &
2 5x, 106hto be free-field data format.   then, he should check all
3   data items, counting separator characters (which           ,/, &
4 5x,  33hdefine the number of data items).                  )
    go to 6220
6167 n1 = iabs( lstat(14) )
    write (lunit6, 7167)  branch, bus4, n1
7167 format (5x,  82hthe last-read data card has the  'bus3'  field of
1   columns  15-20  punched with   ',  a6,  17h' ,   so that the  ,/, &
2 5x, 112h'bus4'  field of columns  21-26  is to be the name of the
3   branch.   but the 6-character text used for this name,  ,/, & 5x,
4 1 h',  a6,  99h' ,   is not new and unique as required by EMTP law
5   .   90 days in jail or a $100 fine.   row number,  i6,
6   9 h   of the   )
    if ( lstat(14)  .gt.  0 )
1   write (lunit6, 7267)
7267 format (5x,  77hlinear branch table contains a linear branch which
1   has already been so named.    )
    if ( lstat(14)  .lt.  0 )
1   write (lunit6, 7367)
7367 format (5x, 103hnonlinear branch table contains a nonlinear or pse
1   udo-nonlinear branch which has already been so named.    )
    go to 6220
6168 write (lunit6, 7168)
7168 format ( 8h unused.  )
6169 write (lunit6, 7169)
7169 format ( 8h unused.  )
6170 write (lunit6, 7170)  lstat(14)
7170 format (5x, 108hthe last-read data card is a  'line constants'  fr
1   equency card which belongs to the interior data of another     ,/, &
2 5x, 114hEMTP supporting program (e.g.,  'semlyen setup' ).   but
3   the EMTP limit on such individually-specified frequencies     ,/, &
4 5x,   2his,  i5,  98h ,   which has been overflowed by the last-r
5   ead data card.   dimensioning of the crucial arrays in       ,/, &
6 5x, 111hquestion is not under user control.   a complete EMTP rec
7   ompilation would be required in order to increase this    ,/, &
8 5x,  48hlimit, should this prove to be really necessary.     )
    go to 6220
6171 write (lunit6, 7171)  xopt, copt
7171 format (5x, 106hthe branch card now being processed represents a r
1   equest for semlyen recursive convolution modeling.   but     ,/, &
2 5x,  88hthe user specified floating-point miscellaneous data para
3   meters  'xopt'  and  'copt'  as,    e13.4,  6h   and         ,/, &
4 5x,    e13.4,  88h ,   respectively.   this is illegal.   both pa
5   rameters must be equal, and also nonzero.     )
    go to 6220
6172 write (lunit6, 7172)
7172 format (5x, 110hthe EMTP has been reading data within the  'cable
1   constants'  supporting program, with the last-read data card   ,/, &
2 5x, 117hbeing the miscellaneous data card of a new case.   but th
3   e numbers punched hereupon are inconsistent.   specifically,    )
    write (lunit6, 7272)  lstat(14)
7272 format (5x,  10ha value of, i5,  83h   was read from the field  'i
1   typec'  of columns  1  through  5  of the card, using        ,/, &
2 5x, 112h i5  format.   but only the values  1  (for overhead line
3   constants) and  2  (for cable constants) are legal, if      ,/, &
4 5x, 115hthe card in question is nonblank (recall that a blank car
5   d marks the end of such cases within  'cable constants' ).     )
    go to 6220
6173 write (lunit6, 7172)
    write (lunit6, 7173)
7173 format (5x, 108hfield  'isyst'  of columns  6  through  10  has be
1   en punched with the integer value  -1 ,   which means that    ,/, &
2 5x, 108han underground cable system is to be under consideration.
3   but field  'iearth'  of columns  16  through  20          ,/, &
4 5x, 110hhas been punched with the integer value  99 ,   which mea
5   ns that the stratified-earth option is desired.   but        ,/, &
6 5x, 107hthis combination of features is illegal (the EMTP is inca
7   pable of finding the parameters for an underground           ,/, &
8 5x,  53hcable when the earth is not homogeneous and uniform).   )
    go to 6220
6174 write (lunit6, 7174)
7174 format (5x, 108hall conductor cards of an overhead-line case withi
1   n the  'cable constants'  supporting program have now been   ,/, &
2 5x, 106hread.   but one or more of these cards has been punched w
3   ith illegal or inconsistent data.   specifically,            )
    n1 = 3 * lstat(14) - 1
    write (lunit6, 7274)  n1, flstat(15), flstat(16)
7274 format (5x,  23hnon-comment card number, i4,  74h  after the misce
1   llaneous data card bears geometrical conductor data which     ,/, &
2 5x,  78his physically impossible.   the inner radius of the condu
3   ctor has been read as,    e16.4,        16h   meters, while   ,/, &
4 5x,  19hthe outer radius is,    e16.4,     67h .    this violates
5   the EMTP restriction that the tubular conductor             ,/, &
6 5x,  72hthickness must be positive.   zero or negative thickness
7   is not allowed.        )
    go to 6220
6175 write (lunit6, 7175)  lstat(15), flstat(14)
7175 format (5x, 106hsubroutine  'eigen'  is used to calculate eigenval
1   ues of the   (z)(y)   matrix product, within the  'cable     ,/, &
2 5x,  67hconstants'  supporting program.   but within the iteratio
3   n limit of,  i5,   32h ,   the iterative algorithm has       ,/, &
4 5x,  46hfailed to satisfy the convergence tolerance of,
5   e14.2,  39h .    the resulting eigenvalues must be          ,/, &
6 5x,  83hviewed with suspicion (at best), so the solution is being
7   terminated at this point.    )
    go to 6220
6176 write(lunit6,7176)
7176 format(5x,  49herror is in synchronous machine electrical data. ,
1   /,5x,      46hdata has one or more of the following errors  ,
1   /,10x,     28h1. xl not smallest reactance ,
1   /,10x,     28h2. xdpp not smaller than xdp ,
1   /,10x,     27h3. xdp  not smaller than xd  ,
1   /,10x,     28h4. xqpp not smaller than xqp ,
1   /,10x,     27h5. xqp  not smaller than xq  ,
1   /,10x,     44h6. one or more reactances or ra is negative ,/)
    go to 6220
6177 write (lunit6, 7177)  numsm
7177 format (5x, 102hthe EMTP is presently in the process of reading em
1   tp source cards, with the last-read card producing a         ,/, &
2 5x, 104hviolation of the ordering restriction which is applicable
3   when dynamic synchronous machine (s.m.) source              ,/, &
4 5x, 111hcomponents are present.   recall that all non-s.m. source
5   cards must precede any s.m. source cards, in order of       ,/, &
6 5x,  37hdata input.   thusfar there have been, i4,   60h   s.m. s
7   ource components inputted (with an sce dual machine          )
    write (lunit6, 7277)  lstat(14)
7277 format (5x, 109hcounting as just one source component), before the
1   last-read data card.   but the last data card has the field    ,/, &
2 5x,  74hof source type-code  'itype'  (columns 1-2) punched with
3   the integer value, i5,  25h ,   which is not a legal         ,/, &
4 5x, 110hcharacterization for a s.m. source component.   the last-
5   read data card is thus either erroneous by itself, or        ,/, &
6 5x,  63hout of order (it must precede the first s.m. source compo
7   nent).      )
    go to 6220
6178 write (lunit6, 7178)  lstat(14)
7178 format (5x, 109hthe EMTP is presently inputting source components,
1   with the last-read data card serving to define the network    ,/, &
2 5x, 109hconnection for the third and final phase of a 3-phase dyn
3   amic synchronous machine (s.m.) component.   but the         ,/, &
4 5x, 108hsource type-code for this component is illegal (unrecogni
5   zable).   from the field  'itype'  (columns 1-2) of          ,/, &
6 5x, 108hthe first data card for this s.m. component --- two non-c
7   omment cards before the last-read data card --- was          ,/, &
8 5x, 19hread a type code of,  i2,    83h .    but only s.m. model
9   types  51  through  54  and  59  are presently available.     )
    write (lunit6, 7278)   numsm
7278 format (5x, 106hfurther, the user is allowed to use either machine
1   types  51-54 ,   or type  59  ---- but not a mixture of     ,/, &
2 5x, 108hthe two.   recall that these two classes of s.m.  are qui
3   te different, utilizing different solution methods.          ,/, &
4 5x,  62hthe just-read dynamic  s.m.  EMTP  source component was n
5   umber,  i4,  21h   in order of input.                        )
    go to 6220
6179 write (lunit6, 7179)
7179 format (5x, 108hthe data case under consideration has too many out
1   put quantities for the present EMTP table sizes.   this is    ,/, &
2 5x, 109hreally an overflow of EMTP list number  11 ,   though not
3   due to conventional EMTP electric-network branch or         ,/, &
4 5x, 110hnode quantities.   rather, it is the added burden of dyna
5   mic synchronous machine (s.m.) output variables, plus        ,/, &
6 5x, 103hthe burden of tacs output variables, which has now led to
7   the present list-11 overflow.   figures which               )
    write (lunit6, 7279) lsiz12, nc, lstat(15), lstat(16), lstat(14)
7279 format (5x,  48hcharacterize this difficulty are as follows ....,/
1   ,5x,  i5, 43h = present user-dimensioned size of list 11    ,/, &
2 5x,  i5,  67h = number of conventional electric-network branch-ou
3   tput quantities                                              ,/, &
4 5x,  i5,  35h = number of s.m. output quantities            ,/, &
5 5x,  i5,  35h = number of tacs output quantities            ,/, &
6 5x,  34hthe last three figures above total,  i6,  70h ,   which i
7   s therefore the minimum acceptable size of list number 11.    )
    write (lunit6, 7379)
7379 format (5x, 103heither increase the size of list 11 to at least th
1   is size, or appropriately reduce the number of output        ,/, &
2 5x,  72hquantities, before trying once again to solve the data ca
3   se in question.              )
    kill = 1
    lstat(16) = 11
    nchain = 51
    if ( iprsup  .ge.  1 )
1   write ( lunit6, 4568 )
4568 format ( 24h  "exit  module over54." )
    go to 99999
6180 write(lunit6,7180) lstat(16), lstat(17)
7180 format( 5x, 51hthe size of array 'voltbc', defined in blkcom to be
2   , i6, 1h,, 3x, 48his not adequate for the use of that array in the
3   , /, 5x,  64hprocessing of output requests for the type 59 s.m.  a
4   minimum of, i5, 3x,18hcells is required.)
    go  to  6220
6181 write(lunit6,7181) lstat(15),lstat(16), lstat(16)
7181 format( 5x, 77hinconsistency discoverd on one of the mass cards .
2   the specified mass no. was, i5, 1h., 3x, 15hfor a s.m. with, i5,
3  8 h  masses, /, 5x,  38hallowable range is between     1   and,
4   i5,  9h  masses.)
    go  to  6220
6182 write (lunit6, 7154)
    write (lunit6, 7182)  lstat(14), lstat(15)
7182 format (5x, 104hthe number of frequency cards which are present in
1   the previously-read line-constants data is incorrect.       ,/, &
2 5x,102hbefore the one which requests an automatic looping over lo
3   garithmically-spaced frequencies, there were, i4,            /,
4 5x,    108hfrequency cards, each of which requests the line-const
5   ants calculation at an individual, discrete frequency.       ,/, &
6 5x,  77hbut the transposition flag (miscellaneous data parameter
7   'nss'  )  had value,  i4,   23h .   these two integers        )
    write (lunit6, 7282)
7282 format (5x, 108hshould add up to two.   but they do not.   remembe
1   r, for an untransposed line, there are to be two discrete-    ,/, &
2 5x,  62hfrequency cards, while a transposed line requires exactly
3   one.    )
    go to 6220
6183 j = lstat(13)
    write (lunit6, 7154)
    write (lunit6, 7183)  volti(j), j, ci1
7183 format (5x, 104hthe frequency cards which are present in the previ
1   ously-read line-constants data are not all consistent.       ,/, &
2 5x, 110hthe EMTP requires that all such cards apply to the same m
3   odel of the transmission line.   but it will be noted        ,/, &
4 5x,  28hthat an earth resistivity of,    e17.5,  49h   ohm-meters
5   was read from frequency card number, i4,   10h ,   while     ,/, &
6 5x,     e17.5,      94h   was read from the first such card.   th
7   ese two resistivities are unequal, which is illegal.         )
    go to 6220
6184 write (lunit6, 7154)
    write (lunit6, 7184)   lstat(13)
7184 format (5x, 104hthe previously-read line-constants data cards are
1   illegally-structured for usage with  'semlyen setup' .       ,/, &
2 5x, 109hfirst, there should be the line-conductor cards, terminat
3   ed by a blank card.   then come the frequency cards,         ,/, &
4 5x, 104hwith only the last of these requesting the logarithmic fr
5   equency-looping option.   finally, a blank card              ,/, &
6 5x,  95hterminates the frequency cards, and a second blank card f
7   inishes the line constants data cards., 10x, 4hn1 =, i2 )
    go to 6220
6185 write (lunit6, 7154)
    write (lunit6, 7185)   lstat(13), lstat(14)
7185 format (5x,  39hthe EMTP has previously read a value of,  i6,
1  49 h   (decimal) for the miscellaneous data parameter       ,/, &
2 5x,  82h 'iotx'  which controls printout.   but this exceeds the
3   legal meaningful limit of,  i6,  12h  (decimal).     )
    go to 6220
6186 write (lunit6, 7154)
    write (lunit6, 7186)  voltbc(1), voltk(icheck)
7186 format (5x, 107hfor purposes of  'semlyen setup'  usage, the frequ
1   encies for which line constants have just been calculated     ,/, &
2 5x, 112hare inappropriate.   recall that within the line-constant
3   s data, the frequency card for logarithmic looping over      ,/, &
4 5x, 112ha range of frequencies is to be preceeded by a frequency
5   card for the steady-state frequency.   the semlyen code      ,/, &
6 5x, 112hrequires that the beginning loop-frequency exceed the ste
7   ady-state frequency.   but such is not the case for the       ,/, &
8 5x,  22huser's data (values of,   e16.4,    6h   and,    e16.4,
9     41 h   were punched for these, respectively).        )
    go to 6220
6187 write (lunit6, 7187)  bus3, bus4, bus5
7187 format (5x, 105hthe last-read data card belongs to a  'semlyen set
1   up'  data case, but is not what the EMTP was expecting.       ,/, &
2 5x, 108hfollowing the first semlyen miscellaneous data card, the
3   user must supply a card which bears either the text          ,/, &
4 5x, 110h 'line constants'   or the text   'cable constants' ,   p
5   unched in columns one onward.   not so for the user's        ,/, &
6 5x,  56hcard, the column 1-18 contents of which were read as   ',
7       3 a6 ,     33h' .    correct this card so as to     )
    write (lunit6, 7287)
7287 format ( 5x, 101hproperly inform the EMTP as to which supporting r
1   outine program control is to be transferred to next.      )
    go to 6220
6188 d1 = flstat(13) / twopi
    d2 = flstat(15) / twopi
    write (lunit6, 7154)
    write (lunit6, 7188)  d1, flstat(14)
7188 format (5x, 104hafter having completed the  'line constants'  or
1   'cable constants'  calculation, program control is now       ,/, &
2 5x, 114hback in the  'semlyen setup'  overlay where matrices  (r)
3   ,  (x),  (g),  and  (b)  are being read from input/output      ,/, &
4 5x, 112hunit number  3 .   but the capacitance matrix is erroneou
5   s.   it should be independent of frequency, but is not.      ,/, &
6 5x,  49hin particular, the first diagonal entry  c(1,1) =,
7   e20.8 ,       29h   farad/length for frequency,  e18.6     )
    write (lunit6, 7288)  d2, epsiln
7288 format (5x,  61hhz,  while the  c(1,1)  value for the preceding fr
1   equency was,     e20.8 ,    24h .   it is required that      ,/, &
2 5x,  46hthese capacitances agree within a tolerance of,   e14.2,
3    47 h   (floating-point miscellaneous data parameter       ,/, &
4 5x, 108h 'epsiln' ).   for the user's data, this check has not be
5   en met.   the capacitance matrices are judged to be          ,/, &
6 5x,  46hinvalid, and the solution is being terminated.     )
    go to 6220
6189 write (lunit6, 7189)  lstat(15)
7189 format (5x, 106hthe EMTP data case now being processed makes use o
1   f the tacs modeling capability, all data cards for which       ,/, &
2 5x, 110hhave now been read.   as the preceding printout shows, th
3   e vector of tacs variable names has repeated entries.         ,/, &
4 5x,   9hthere are,  i4,   94h   such conflicts.   the trouble can
5   be traced back to the definition of tacs function blocks,    ,/, &
6 5   x, 113htacs summers, and tacs supplemental variables and devices
7     .   all names assigned to such outputs must be distinct.      )
      write (lunit6, 7289)
7289  format (5x, 106hfor example, if a tacs function block is given the
1       name  'kontrl'  (read from columns 3-8 of the data card     ,/, &
2 5     x, 108hdefining the block), then this same 6-character name had
3       better not be used for a tacs supplemental variable          ,/, &
4 5     x, 56h(read from columns 3-8 of the variable-definition card). )
        go to 7421
6190    write (lunit6, 7190)  lstat(14), bus6
7190    format (5x, 109hthe EMTP has been reading data cards which define
1       a dynamic synchronous machine (s.m.) component.   the last-    ,/, &
2 5     x, 110hread card follows the s.m. output-request card, and prece
3       des the  'finish'  card|   having columns 1-2 punched        ,/, &
4 5     x,  7hwith  ',  i2,   98h' ,   this card represents a request th
5       at the machine be controlled by tacs.    but either the a-6    ,/, &
6 5     x,   7hname  ',  a6,  95h'  which was read from columns 3-8 is n
7       ot a legal tacs-variable name for this purpose, since it      )
        write (lunit6, 7290)
7290    format (5x, 109hwas not also punched on a   'tacs outputs'   card
1       which began the input of tacs data.   before tacs variables    ,/, &
2 5     x, 113hcan be used within the electric network, they must be dec
3       lared on a   'tacs outputs'   or a   'tacs EMTP sources'     ,/, &
4 5     x,   5hcard.   )
        write( lunit6, 7390 )  lstat( 15 )
7390    format( 5x, 41hor... the number punched in columns 15-17,
1 27    h has an incorrect value of,, i5 )
        go to 6220
6191    write (lunit6, 7191)
7191    format (5x, 110hthe EMTP finds the user's data case to be obnoxiou
1       sly degenerate, and refuses to continue with the simulation.   ,/, &
2 5     x, 110hthe electric network has no sources and no dynamic synchr
3       onous machines, so only a natural (unforced) solution        ,/, &
4 5     x, 110his called for.   but the user has failed to input any non
5       zero initial conditions.   hence the solution will be        ,/, &
6 5     x,  86hidentically zero for all time.   there is no need to cont
7       inue with the solution, then.      )
        go to 6220
6192    write (lunit6, 7192)
7192    format (5x, 107hduring the list-building operation which is requir
1       ed for connectivity output, the temporary working vectors     ,/, &
2 5     x, 110hof list 99 which are used have overflowed.   the proper s
3       olution is to redimension the EMTP, though removal of        ,/, &
4 5     x, 110hthe '1'-punch in field  'idoubl'  of the integer miscella
5       neous data card will bypass the present complication.        ,/, &
6 5     x, 109hbut unless the user increases dimensions, he will probabl
7       y just be stopped shortly hereafter, in renumbering.         )
        write (lunit6, 7292)
7292    format (5x, 109hboth computations use the same arrays, and have re
1       lated storage requirements.   lists number 5 % 8 contribute    ,/, &
2 5     x,  36htotally to dependent list number 99.       )
        go to 6220
6193    write (lunit6, 7193)  fminfs
7193    format (5x, 108hthe last-read data card bears the key word   'freq
1       uency scan'   in columns 1-14.   this is a request for the     ,/, &
2 5     x, 109hautomatic looping over steady-state phasor solutions only
3       , as the source frequency is methodically increased.         ,/, &
4 5     x,  24ha beginning frequency of,    e15.4,      64h   was read f
5       rom the  'fmin'  field of columns 25-32 using  e8.0          ,/, &
6 5     x, 115hformat, and must be positive (to be legal data).   the fr
7       equency increment  'delf'  of columns 33-40 was read using    )
        write (lunit6, 7293)  delffs, fmaxfs, lstat(14)
7293    format (5x,  15he8.0  format as,    e15.4,     71h .    this must
1       be positive, unless data field  'log'  of columns 49-56      ,/, &
2 5     x, 103h(see below) is punched positive.   the maximum (or end) f
3       requency  'fmax'  of columns 41-48 was read as,  e15.4       ,/, &
4 5     x, 109h ,   which must exceed  'fmin' .   finally, integer field
5       'log'  of columns 49-56 was punched with the value         ,/, &
6 5     x, i5, 107h ,   which must not be negative.   the user's data ca
7       rd is illegal in that it violates one or more of these       ,/, &
8 5     x,  22hjust-delineated rules.   )
        go to 6220
6194    write (lunit6, 7194)  kconst, lstat(13), lstat(14)
7194    format (5x, 103hthe data case now being read in includes a request
1       for the  'frequency scan'  feature.   but the source        ,/, &
2 5     x, 108hdata is inconsistent with this intended usage.   to be le
3       gal, there must be at least one type-14 EMTP source          ,/, &
4 5     x, 112hcomponent which is present during the steady-state phasor
5       network solutions (as requested by punching data field      ,/, &
6 5     x, 57h 'tstart'  of columns 61-70 negative).   but the user has,
7       i5,  35h   EMTP source components, of which,  i5,  6h   are   ,/, &
8 5     x,  30hof type 14, of which (in turn),  i5,
9  28   h   have  'tstart'  negative.          )
        go to 6220
6195    write (lunit6, 7195)  lstat(14), lstat(15)
7195    format (5x, 102hthe EMTP is in the process of inputting branch car
1       ds for a transmission circuit which is modeled using         ,/, &
2 5     x,  89hametani linear convolution.   the last-read data card con
3       tains parameters for mode number,  i5,   9h .    but         ,/, &
4 5     x,  72hthe integer which was read from columns  73-74  using  i2
5       format is   ',  i2,  28h' .    this is the number of       ,/, &
6 5     x, 105hlinear segments which represent the response ---- which i
7       s presently constrained to equal five.    re-run             ,/, &
8 5     x,  94h 'ametani setup'   to get a valid new set of branch cards
9       for the circuit, and then try again.      )
        go to 6220
6196    write (lunit6, 7196)
7196    format (5x, 103hEMTP control is now in the   'ametani setup'   sup
1       porting routine, ready to transfer to either   'cable        ,/, &
2 5     x, 111hconstants'   or   'line constants' .    but the last-read
3       data card does not bear one of these key words on it,       ,/, &
4 5     x,  31hbeginning in column number  1 .        )
        go to 6220
6197    write (lunit6, 7197)   deltat, flstat(14)
7197    format (5x,  49hthe EMTP is now inputting data for a transmission,
1             36 h circuit that is being modeled using   ,/, &
2 5     x,  96hfrequency dependent representation.  but for this data, t
3       he present time-step size  'deltat'  of, e15.4, 10h sec    is  ,/, &
4 5     x,  61htoo large.   the  travel time of the current mode is equa
7       l to, e15.4,  45h sec ,    which must exceed  'deltat' .   the ,/, &
8 5     x,  73htime-step size of the study must be decreased to satisfy
9       this constraint.        )
        go to 6220
6198    write (lunit6, 7198)  lstat(16), lstat(15)
7198    format (5x, 109hthe EMTP is in the middle of solving a    'semlyen
1       setup'    data case, at which point it has been discovered    ,/, &
2 5     x, 112hthat insufficient working space exists.    the   'line co
3       nstants'   or   'cable constants'   calculation has now      ,/, &
4 5     x,  59hbeen successfully completed, and a minimum working space
5       of,  i7,   39h    floating-point cells is now a known        ,/, &
6 5     x, 103hrequirement for the completion of   'semlyen setup'   pro
7       cessing.   but module  'vdov45'  only contains,  i7          )
        write (lunit6, 7298)
7298    format (5x, 108hfloating-point cells of such working space.   the
1       EMTP must be re-dimensioned by the user, so as to increase   ,/, &
2 5     x, 113hthe size of   /label/   by the just-indicated shortfall.
3       distribution of total storage among the different EMTP     ,/, &
4 5     x, 103hlists is immaterial in this case (as with the dimensionin
5       g of all primary-level non-solution overlays).      )
        go to 6220
6199    write (lunit6, 7199)  flstat(15), lstat(14), flstat(13), lstat(13)
7199    format (5x, 107hthe present   'semlyen setup'   data case has brok
1       en down in the middle of a matrix inversion operation for    ,/, &
2 5     x,   9hfrequency,    e14.5,    67h    hertz.   the eigenvector (
3       modal transformation) matrix of order,  i5,   7h    has      ,/, &
4 5     x,   9hthe value,     e13.3,    56h    for the largest possible
5       pivot element of row number,   i5,   19h .    but this does    )
        write (lunit6, 7299)  flstat(14)
7299    format ( 5x,  64hnot exceed the near-zero tolerance  'epspv2' ,
1       which has value,    e13.3,     20h .    execution must       ,/, &
2 5     x, 107hbe stopped immediately.   yet, the user is reminded that
3       he can redefine  'epspv2'  by means of an optional           ,/, &
4 5     x,  52h 'tolerances'   card (read by   'semlyen setup'  ) .  )
        go to 6220
6200    write (lunit6, 7200)
7200    format (5x, 103hmemory-overflow problem, before entry into the ren
1       umbering overlay (for transient network renumbering).        ,/, &
2 5     x, 112hrecall that space for renumbering comes from a major port
3       ion of   /label/ .    three vectors are used, with size      ,/, &
4 5     x, 114hgiven by list number  99  of the case-summary statistics.
5       this space is insufficient even for the simple storage    ,/, &
6 5     x,  98hof the connectivity of  (y) --- to say nothing of the sim
7       ulation of fillin upon triangularization.                    )
        if ( lstat(14)  .gt.  0 )
1       write (lunit6, 7300)  ibr, lstat(14)
7300    format (5x,  6hof the,  i6,
1  36   h   entries of the branch table, only,  i6,
2  58   h   were inserted into the working storage before overflow. )
        if ( lstat(14)  .eq.  0 )
1       write (lunit6, 7400)
7400    format (5x, 108hall branch-table entries were successfully inserte
1       d into the working storage, but entries from the nonlinear   ,/, &
2 5     x,
3  58   helement table and the switch table then produced overflow. )
        write (lunit6, 7500)
7500    format (5x, 108has for redimensioning of the EMTP, lists  5  and
18      contribute  100  per cent to the size of dependent list   ,/, &
2 5     x,  68h99.   increase one of these list sizes substantially, and
3       try again.         )
6220    lastov = nchain
        nchain = nfrfld + 50
        if ( iprsup  .ge.  1 )
1       write ( lunit6, 4568 )
99999   return
      end function block
      c
      c     end of file: over54.for
      c
