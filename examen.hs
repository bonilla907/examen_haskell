main = do
    
    putStr("Inserta tu mes en numero: ")
    y <- getLine
    let mes = read y::Int
    
    if mes==0 || mes>12
            then do 
                putStrLn("El mes es incorrecto, favor de verificar")
                main
    else do
        putStr("Inserta tu dia en numero: ") 
        x <- getLine
        let dia = read x::Int
        if dia==0 || dia>31
        then do
            putStrLn("El dia es incorrecto, favor de verificar")
            main
        else do
            if mes==2 && dia>28
            then do
                    putStrLn("Febrero solo tiene 28 dias, favor de verificar")
                    main
            else do
                meses mes
            
meses mes = do
    case mes of 
        1 -> print("Naciste en Enero, tu mes tiene 31 dias")
        2 -> print("Naciste en Febrero, tu mes tiene 28 dias")
        3 -> print("Naciste en Marzo, tu mes tiene 31 dias")
        4 -> print("Naciste en Abril, tu mes tiene 30 dias")
        5 -> print("Naciste en Mayo, tu mes tiene 31 dias")
        6 -> print("Naciste en Junio, tu mes tiene 30 dias")
        7 -> print("Naciste en Julio, tu mes tiene 31 dias")
        8 -> print("Naciste en Agosto, tu mes tiene 31 dias")
        9 -> print("Naciste en Septiembre, tu mes tiene 30 dias")
        10 -> print("Naciste en Octubre, tu mes tiene 31 dias")
        11 -> print("Naciste en Noviembre, tu mes tiene 30 dias")
        12 -> print("Naciste en Diciembre, tu mes tiene 31 dias")
