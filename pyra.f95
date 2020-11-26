program pyra
    implicit none
    integer :: i, j, n, c
    read(*, *) n
    do i = 0, n - 1
        c = 1
        do j = 0, n - i
            write(*, "(' ')", advance="no")
        end do
        do j = 0, i
            write(*, "(I2)", advance="no") c
            c = (c * (i - j)) / (j + 1)
        end do
        write(*, *)
    end do
end program
