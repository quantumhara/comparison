      implicit real*8 (a-h,o-z)

      n=1000000000

      do 100 i=1,n,1
         sum=sum+i
100   end do

      write(6,*) "sum=", sum

      stop
      end
