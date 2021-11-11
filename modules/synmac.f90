!-*- mode: f90; indent-tabs-mode: nil; coding: utf-8; show-trailing-whitespace: t -*-

!
! file synmac.f90
!

!     real variables precede integer ones          *********************
!     auxilliary arrays ( size based on no. of windings = 7 )  ********

module smach
  implicit none
  integer(4) :: itold, ibrold, ktemp(1), mfirst, msmout, nsmout, nst
  real(8) :: athtw, asqrt3, bdam, bin, damrat, delta6, factom, om2, omdt
  real(8) :: radeg, smoutv(15), sqrt3, sqrt32, thtw, x1(36), z(100)
  !  common /smach/ z(100), x1(36)
  !     spy interface variables *****************************************
  !  common /smach/ smoutv(15)
  !     computational constants  *****************************************
  !  common /smach/ sqrt3, asqrt3, sqrt32, thtw, athtw, radeg, omdt
  !  common /smach/ factom, damrat, delta6, om2, bin, bdam
  !     integer variables      *******************************************
  !  common /smach/ mfirst, nst, itold, ibrold, nsmout, msmout

  ! Equivalences.

  equivalence (ktemp(1), z(1))
end module smach

!
! end of file synmac.f90
!
