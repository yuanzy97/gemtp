!-*- mode: f90; indent-tabs-mode: nil; coding: utf-8; show-trailing-whitespace: t -*-

!
! file ntacs3.f90
!

!
! subroutine ntacs3.
!

subroutine ntacs3
  use tacsto
  use blkcom
  use tacsar
  use labcom
  implicit none
  !  common  / c0b002 /   ykm   (   1 )    ! wsm  +  thl manual modification for bpa emtp
  !  common  / c0b099 /   tclose(   1 )    ! wsm  +  thl manual modification for bpa emtp
  !  common  / c0b101 /   kpos  (   1 )    ! wsm  +  thl manual modification for bpa emtp
  !  common  / c0b103 /   emtpe (   1 )    ! wsm  +  thl manual modification for bpa emtp
  !
  i5 = kud1
  do i = 1, niu
     i2 = kxtcs + nuk + i
     xtcs(i2) = flzero
     i1 = iuty(kiuty + i)
     k = ud1(i5 + 2)
     i6 = iabs (kpos(k))
     i3 = i1-89
     !     go to(4090, 4091, 4092, 4093, 4080, 4080), i3
     select case (i3)
     case (1)
        xtcs(i2) = emtpe(k)
        exit

     case (2)
        if (i6 .le. 3) xtcs(i2) = tclose(k)
        exit

     case (3)
        xtcs(i2) = ykm(k)
        exit

     case (4)
        if (i6 .le. 3) xtcs(i2) = unity
        exit

     case (5, 6)
        exit
     end select
     i5 = i5 + 5
  end do
4080 continue
5000 continue
  etime = t
  to = 9000
  call elec
!  lstat(35) = cptr   ! wsm  +  thl manual modification for bpa emtp
!  k = isto(ishenv + 7) ! wsm  +  thl manual modification for bpa emtp
!  moncar(32) = iptr + isto(k)*isto(k + 1)   ! wsm  +  thl manual modification for bpa emtp
!  k = isto(ishenv + 8)                    ! wsm  +  thl manual modification for bpa emtp
!  lstat(48) = rptr-rbase + isto(k)*isto(k + 1)   ! wsm  +  thl manual modification for bpa emtp
  if (.not. (etime + estep / two .gt. estop)) go to 5010
  close (unit08)
  close (bkfile)
5010 continue
  return
end subroutine ntacs3

!
! end of file ntacs3.f90
!
