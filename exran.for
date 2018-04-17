      implicit real*8 (a-h,o-z)

      pi=3.14159265358979323d0

      n=10000
      seed=1

      const=48271.d0
      denom=2.d0**31.d0-1.d0

      incir=0.d0
      do i=1,n,1
         do j=1,n,1
            seed=mod(const*seed,denom)
            ran_f=seed/denom

            coords1=ran_f
            coords2=ran_f
            slength=sqrt(coords1*coords1+coords2*coords2)

            if (slength<=1) then
               incir=incir+1
            end if
         end do
      end do

      farea=4.d0*incir/(n*n)

      write(6,*) 'cal_pi=', farea, 'pi=', pi, 'error=', farea-pi

      stop
      end
