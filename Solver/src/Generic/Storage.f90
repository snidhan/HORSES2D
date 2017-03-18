module Storage_module
    use SMConstants
    implicit none

    private
    public  Storage_t , newStorage

    type Storage_t
        real(kind=RP), pointer      :: Q(:)
        real(kind=RP), pointer      :: QDot(:)
#ifdef NAVIER_STOKES
        real(kind=RP), pointer      :: dQ(:)
#endif
    end type Storage_t

    contains
        function newStorage() result(val)
            implicit none
            type(Storage_t)         :: val

            val % Q    => NULL()
            val % QDot => NULL()
#ifdef NAVIER_STOKES
            val % dQ   => NULL()
#endif

        end function newStorage

end module Storage_module
