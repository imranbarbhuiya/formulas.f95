! To calculate velocity and accelaration from the given position from equidistance
! time data using diffrence formula

program diffrence_formula
    implicit none

    integer n, i
    real x(25), y(25)

    print*, 'Enter the number of data points'
    read*, n

    if (n<1) then
        print*, 'Not enough data points'
        stop
    end if

    print*, 'Enter the x and y values'
    do i = 0, n
        read*, x(i), y(i)
    end do



    print*, 'The values of velocity are'
    do i = 0, n-1
        print*, (y(i+1) - y(i)) / (x(i+1) - x(i))
    end do

    if (n<2) then
        print*, 'Not enough data points to calculate accelaration'
        stop
    end if

    print*, 'The values of accelaration are'
    do i = 0, n-2
        print*, (y(i+2) - 2*y(i+1) + y(i)) / (x(i+1) - x(i))**2
    end do


    
end program diffrence_formula