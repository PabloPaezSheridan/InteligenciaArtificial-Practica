:-dynamic(cuentasAPagar/3). %El predicado es dinámico

inicio:-abrir_base,
        agregarNuevo,
        guardar.

abrir_base:-consult('./datos.txt').

agregarNuevo :- assert(cuentasAPagar(pablo,luz,800)),
                assert(cuentasAPagar(pablo,gas, 300)),
                assert(cuentasAPagar(pablo,agua,250)),
                assert(cuentasAPagar(pablo,internet,500)),

                assert(cuentasAPagar(clara,luz,750)),
                assert(cuentasAPagar(clara,gas, 200)),
                assert(cuentasAPagar(clara,agua,350)),
                assert(cuentasAPagar(clara,internet,1000)).

guardar:-tell('./datos.txt'), listing(cuentasAPagar), told.
