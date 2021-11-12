!-*- mode: f90; indent-tabs-mode: nil; coding: utf-8; show-trailing-whitespace: t -*-

!
! file labcom.f90
!

module labcom
  use blkcom
  implicit none
  real(8) :: x(   10000)
  real(8) :: ykm(   20000)
  integer(4) :: km(   20000)
  real(8) :: xk(  121080)
  real(8) :: xm(  121080)
  real(8) :: weight(     460)
  integer(4) :: iwtent(      31)
  real(8) :: con1(      30)
  integer(4) :: iskip(       5)
  real(8) :: zinf(       5)
  real(8) :: eta(       5)
  integer(4) :: nhist(       5)
  real(8) :: stailm(      90)
  real(8) :: stailk(      90)
  real(8) :: xmax(    3600)
  integer(4) :: koutvp(     508)
  real(8) :: bnrg(     254)
  real(8) :: sconst(  100000)
  real(8) :: cnvhst(   53000)
  real(8) :: sfd(    6000)
  real(8) :: qfd(    6000)
  real(8) :: semaux(   50000)
  integer(4) :: ibsout(     900)
  real(8) :: bvalue(     900)
  real(8) :: sptacs(   90000)
  integer(4) :: kswtyp(    1200)
  integer(4) :: modswt(    1200)
  integer(4) :: kbegsw(    1200)
  integer(4) :: lastsw(    1200)
  integer(4) :: kentnb(    1200)
  integer(4) :: nbhdsw(    3600)
  real(8) :: topen(    3600)
  real(8) :: crit(    1200)
  integer(4) :: kdepsw(    3600)
  real(8) :: tdns(    1200)
  integer(4) :: isourc(    1200)
  real(8) :: energy(    1200)
  integer(4) :: iardub(    3600)
  real(8) :: ardube(    4800)
  integer(4) :: nonlad(     300)
  integer(4) :: nonle(     300)
  real(8) :: vnonl(     300)
  real(8) :: curr(     300)
  real(8) :: anonl(     300)
  real(8) :: vecnl1(     300)
  real(8) :: vecnl2(     300)
  integer(4) :: namenl(     300)
  real(8) :: vzero(     300)
  integer(4) :: ilast(     300)
  integer(4) :: nltype(     300)
  integer(4) :: kupl(     300)
  integer(4) :: nlsub(     300)
  real(8) :: xoptbr(    3000)
  real(8) :: coptbr(    3000)
  real(8) :: cursub(     312)
  real(8) :: cchar(     900)
  real(8) :: vchar(     900)
  real(8) :: gslope(     900)
  integer(4) :: ktrans(   93002)
  integer(4) :: kk(   93002)
  real(8) :: c(   10000)
  real(8) :: tr(   20000)
  real(8) :: tx(   20000)
  real(8) :: r(   10000)
  integer(4) :: nr(    3000)
  integer(4) :: length(    3000)
  real(8) :: cik(    3000)
  real(8) :: ci(    3000)
  real(8) :: ck(    3000)
  integer(4) :: ismout(    1052)
  real(8) :: elp(     404)
  real(8) :: cu(      96)
  real(8) :: shp(    1008)
  real(8) :: histq(     504)
  integer(4) :: ismdat(     120)
  character(8), target :: texvec(    4000)
  integer(4) :: ibrnch(     900)
  integer(4) :: jbrnch(     900)
  real(8) :: tstop(     100)
  integer(4) :: nonlk(     300)
  integer(4) :: nonlm(     300)
  real(8) :: spum(   30000)
  integer(4) :: kks(   93002)
  integer(4) :: kknonl( 2232048)
  real(8) :: znonl( 2232048)
  real(8) :: znonlb(   93002)
  real(8) :: znonlc(   93002)
  real(8) :: finit(   93002)
  integer(4) :: ksub(     312)
  integer(4) :: msub(     312)
  integer(4) :: isubeg(     304)
  integer(4) :: litype(    3000)
  integer(4) :: imodel(    3000)
  integer(4) :: kbus(    3000)
  integer(4) :: mbus(    3000)
  integer(4) :: kodebr(    3000)
  real(8) :: cki(    3000)
  real(8) :: ckkjm(    3000)
  integer(4) :: indhst(    3000)
  integer(4) :: kodsem(    3000)
  integer(4) :: namebr(   18000)
  integer(4) :: iform(     100)
  integer(4) :: node(     100)
  real(8) :: crest(     100)
  real(8) :: time1(     100)
  real(8) :: time2(     100)
  real(8) :: tstart(     100)
  real(8) :: sfreq(     100)
  integer(4) :: kmswit(    3600)
  integer(4) :: nextsw(    1200)
  real(8) :: rmfd(       1)
  real(8) :: cikfd(       1)
  integer(4) :: imfd(     600)
  real(8) :: tclose(    1200)
  real(8) :: adelay(    3600)
  integer(4) :: kpos(    1200)
  integer(4) :: namesw(    1200)
  real(8) :: e(   93002)
  real(8) :: f(   93002)
  integer(4) :: kssfrq(   93002)
  integer(4) :: kode(   93002)
  integer(4) :: kpsour(   93002)
  real(8) :: volti(    6000)
  real(8) :: voltk(    3000)
  real(8) :: volt(    6000)
  character(8) :: bus(   93002)
  !
  real(8) :: emtpf(     200)
  integer(4) :: infdli(       1)
  integer(4) :: ispum(       1)
  real(8) :: emtpe(     200)
  real(8) :: cmr(       1)
  real(8) :: trshun(       1)
  real(8) :: cser(       1)
  integer(4) :: massex(       1)
  integer(4) :: mapcas(       1)
  integer(4) :: mapinv(       1)
  real(8), dimension(:), allocatable :: txshun
  integer(4) :: node1(       1)
  integer(4) :: node2(       1)
  integer(4) :: icrit(       1)
  real(8) :: cmi(       1)
  integer(4) :: ipout
  integer(4) :: n56
  integer(4) :: ismold
  integer(4) :: nn10
  integer(4) :: nn4
  integer(4) :: nn14
  real(8) :: caslnx(       1)
  real(8) :: volta(       1)
  real(8) :: cshun(       1)
  real(8) :: wk1(       1)
  real(8) :: cblhst(       1)
  real(8) :: ui(      40)
  real(8) :: trser(       1)
  real(8) :: txser(       1)
  real(8) :: xx(       1)
  real(8) :: r4(       1)
  real(8) :: ur(      40)
  real(8) :: caslnr(       1)
  integer(4) :: integx(       1)
  real(8) :: akey(       1)
  real(8) :: tstat(       1)
  integer(4) :: ndex(      20)
  real(8) :: vim(       1)
  integer(4) :: jch2(      20)
  integer(4) :: nsubkm(       1)
  real(8) :: vsmout(       1)
  integer(4) :: ksing(       1)
  integer(4) :: kindep(       1)
  real(8) :: fold(       1)
  equivalence (imfd( 1), jch2( 1))
  equivalence (volt( 1), vim( 1))
  equivalence (e( 1), ndex( 1))
  equivalence (tstat( 1), crit( 1))
  equivalence (akey( 1), adelay( 1))
  equivalence (icrit( 1), crit( 1))
  equivalence (xk( 1), xx( 1))
  equivalence (spum( 1), ispum( 1))
  equivalence (kknonl( 1), nsubkm( 1))
  equivalence (semaux( 1), wk1( 1))
  equivalence (namebr( 1), infdli( 1))
  equivalence (ismout( 1), vsmout( 1))
  equivalence (histq( 1), massex( 1))
  equivalence (volti( 1), volta( 1))
  equivalence (ksing( 1), cchar( 1))
  equivalence (kindep( 1), gslope( 1))
  equivalence (fold( 1), vchar( 1))
  equivalence (r4( 1), volti( 1))
  equivalence (cnvhst( 1), cblhst( 1))
  equivalence (x( 1), integx( 1))
  equivalence (trser( 1), emtpe( 1))
  equivalence (txser( 1), f( 1))
  equivalence (volti( 1), node1( 1))
  equivalence (voltk( 1), node2( 1))
  equivalence (volt( 1), mapinv( 1))
  equivalence (mapcas( 1), ykm( 1))
  equivalence (caslnx( 1), xm( 1))
  equivalence (cser( 1), kode( 1))
  equivalence (trshun( 1), kk( 1))
  equivalence (ismdat(22), ipout)
  equivalence (ismdat(23), n56)
  equivalence (ismdat(24), ismold)
  equivalence (ismdat(25), nn10)
  equivalence (ismdat(26), nn4)
  equivalence (ismdat(27), nn14)
  equivalence (volti( 1), ur( 1))
  equivalence (voltk( 1), ui( 1))
  equivalence (kks( 1), cmr( 1))
  equivalence (kknonl( 1), cmi( 1))
end module labcom

!
! end of file labcom.f90
!

