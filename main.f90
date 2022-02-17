program fortran_faddeeva_usage_example
    use faddeeva_fortran_interface
    !-----------------------------------------
    implicit none
    complex(dp) :: z
    real(dp) :: relerr, relerr_to_print
    !-----------------------------------------
    z = cmplx(6.0_dp, 0.158489319246111_dp, dp)
    relerr = 0.0_dp !machine precision, see Faddeeva.cc in original MIT Faddeeva package
    if (relerr < 2.22e-16_dp) relerr_to_print = 2.22e-16_dp !according to https://en.wikipedia.org/wiki/Machine_epsilon
    print *, 'We demand relative error =', relerr_to_print
    print *, 'z = ', z
    print *, 'w(z) =' , Faddeeva_w(z, relerr)
    print *, 'erf(z) =' , Faddeeva_erf(z, relerr)
    print *, 'erfc(z) =', Faddeeva_erfc(z, relerr)
    print *, 'erfcx(z) =', Faddeeva_erfcx(z, relerr)
    print *, 'erfi(z) =', Faddeeva_erfi(z, relerr)
    print *, 'Dawson(z) =', Faddeeva_dawson(z, relerr)
end program
