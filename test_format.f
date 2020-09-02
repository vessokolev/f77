c------------------------------------------------------------------------
      program test_format
      implicit none
      integer n,i
      real*8 na(100)
      character textstring*180
c-------------------------------------------
      write(6,'($,'' input n:  '')')
      read(5,*)n
      write(6,'($,'' input na: '')')
      read(5,10) (na(i),i=1,n)
      write(6,'($,'' input text: '')')
      read(5,'(a)') textstring

      write(6,20)n,(na(i),i=1,n),textstring

 10    format(<n>f4.1)
 20    format(i2,<n>f4.1,1x,a)

       end
c--------------------------------------------

