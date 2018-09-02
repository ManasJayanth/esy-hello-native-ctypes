module M(F: Ctypes.FOREIGN) =
struct

  let foreign = F.foreign

  module C = struct
    include Ctypes
    let (@->)         = F.(@->)
    let returning     = F.returning
  end

  let imported_my_c_function = foreign "my_c_function" C.(Ges_binding_types.Base.void @-> returning int)
  let imported_my_bar_function = foreign "my_bar_function" C.(Ges_binding_types.Base.void @-> returning int)
                             
end

