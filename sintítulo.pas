program prueba1;
uses CRT;

 var   {variables}
 
  n, opc: integer;
  v: boolean;
  c, operaciones: string;
  resul,bs: real;
 
  
   person:array[1..8]of
      record                {registro para los datos de cada  persona}
        nombre: string;
        apellido: string;
        cedula: string;
        saldo: real;
      end;

procedure  infor_person;        {informacion guardada de cada perssona}
begin

   person[1].cedula:= '17654571';
   person[1].nombre:= 'Jessica';
   person[1].apellido:= 'Valderrama';
   person[1].saldo:= 700.00;
   
   person[2].cedula:= '11855506';
   person[2].nombre:= 'Rosangel';
   person[2].apellido:= 'Rojas';
   person[2].saldo:= 200.00;
   
   person[3].cedula:= '25967334';
   person[3].nombre:= 'Jeferson';
   person[3].apellido:= 'Moreno';
   person[3].saldo:= 500.00;
   
   person[4].cedula:= '27591795';
   person[4].nombre:= 'Jefri';
   person[4].apellido:= 'Martinez';
   person[4].saldo:= 100.00;
   
   person[5].cedula:= '30562940';
   person[5].nombre:= 'Nicol' ;
   person[5].apellido:= 'Rodriguez';
   person[5].saldo:= 1500.00;
   
   person[6].cedula:= '13669815';
   person[6].nombre:= 'Richard';
   person[6].apellido:= 'Martinez';
   person[6].saldo:= 1000.00;

   person[7].cedula:= '25999203';
   person[7].nombre:= 'Deivi';
   person[7].apellido:= 'Rojas';
   person[7].saldo:= 800.00;
   
   person[8].cedula:= '27457042';
   person[8].nombre:= 'Jeison';
   person[8].apellido:= 'Martinez';
   person[8].saldo:= 900.00;

end;
procedure bienvenida;   {bienvenida al programa}
  
        begin
         repeat
            textcolor(blue);
            write('Bienvenido al Cajero Automatico del Banco Mercantil! ');
            normvideo;
            writeln();
            writeln();
            textcolor(blue);
            write('Por Favor a Continuacion Introduzca su Numero de Cedula');
            normvideo;
            writeln(  );
            writeln();
            readln(c);
            
            {validacion para saber si la cedula ingresada esta registrada en la data}
            
            if (c = '17654571') or (c = '11855506') or  (c = '25967334') or (c= '27591795') or (c='30562940')  or (c= '13669815') or (c= '25999203') or (c= '27457042') then 
               
               v:= true
                  
            else 
            
            writeln(' La Cedula Ingresada no se Encuentra Registrada en la Data del Banco Mercantil, Ingrese otro numero de Cedula');
        until (c = '17654571') or (c = '11855506') or  (c = '25967334') or (c = '27591795') or (c ='30562940')  or (c= '13669815') or (c= '25999203') or (c= '27457042');
        
		   if c = '17654571' then n := 1;
		    if c = '11855506' then n := 2;
		     if c = '25967334' then n := 3;
		      if c = '27591795' then n := 4;
		       if c = '30562940' then n := 5;
		        if c = '13669815' then n := 6;
		         if c = '25999203' then n := 7;
		          if c = '27457042' then n := 8;
            
end;

procedure terceros; {transferencias a terceros}

var     {variables locales}

 cd: string;
 m: integer;
 valor: real;

    begin
    
     writeln('Ingrese el numero de cedula de la persona que le realizara el pago');
     readln(cd);
        repeat
           if (cd = '17654571') or (cd = '11855506') or  (cd = '25967334') or (cd = '27591795') or (cd ='30562940')  or (cd = '13669815') or (cd = '25999203') or (cd = '27457042') then 
               
               v:= true
                  
            else 
            
            writeln(' La Cedula Ingresada no se Encuentra Registrada en la Data del Banco Mercantil, Ingrese otro numero de Cedula');
        until (cd = '17654571') or (cd = '11855506') or  (cd = '25967334') or (cd = '27591795') or (cd ='30562940')  or (cd = '13669815') or (cd = '25999203') or (cd = '27457042');
        
		   if cd = '17654571' then m := 1;
		    if cd = '11855506' then m := 2;
		     if cd = '25967334' then m := 3;
		      if cd = '27591795' then m := 4;
		       if cd = '30562940' then m := 5;
		        if cd = '13669815' then m := 6;
		         if cd = '25999203' then m := 7;
		          if cd = '27457042' then m := 8;

         writeln('Ingrese la cantidad de dinero que desea transferir');
         readln(valor);
     
           person[n].saldo:= person[n].saldo - valor;
           person[m].saldo:= person[m].saldo + valor;
           writeln('Su pago fue realizado con exito, su saldo actual es' , person[n].saldo:8:2);
           readln();
end;
       
     

procedure suma(ced: string);    { depostos a cuentas propias}

 
    
      begin
        writeln(' Introduzca el monto que desa depositar');
        readln(bs);
        person[n].saldo := person[n].saldo + bs;
        writeln('Su nuevo Saldo es' ,person[n].saldo:8:2);
      end;
      
procedure estado_cuenta;   { consulta de saldo}



    begin
      writeln('Su saldo actual es' , person[n].saldo:8:2);

    end;



procedure resta ( ced : string); {retiro de fondo}

  
       begin
         
          
             writeln('Seleccione el monto'); {cantidades permitas para retirar}
             writeln('1. 1Bs');
             writeln('2. 2Bs');
             writeln('3. 10Bs');
             writeln('4. 20Bs');
             writeln('5. 50Bs');
             readln(opc);
               
				case opc of     {retiros segun el monto elegido}
			
					1:    {retiro de 1.00bs}
					begin
			            if person[n].saldo < 1.00 then 
			              writeln('Fondo insuficiente , el saldo ingresado no esta disponible en su cuenta' , person[n]. saldo:8:2)
			             
			             else 
			             begin
                           person[n].saldo := person[n].saldo - 1.00;
                           writeln(' El retiro fue exitoso , Su nuevo saldo es' , person[n]. saldo:8:2);
			           end;
			           
			              
			              
			          end;
					
					2:    {retiro de 2.00bs}
					begin
			            if person[n].saldo < 2.00 then 
			              writeln('Fondo insuficiente , el saldo ingresado no esta disponible en su cuenta' , person[n]. saldo:8:2)
			             
			             else 
			             begin
                           person[n].saldo := person[n].saldo - 2.00;
                           writeln(' El retiro fue exitoso , Su nuevo saldo es' , person[n]. saldo:8:2);
			           end;
			           
			              
			              
			          end;
					
			
			       3:   {retiro de 10.00bs}
			       begin
			            if person[n].saldo < 10.00 then 
			              writeln('Fondo insuficiente , el saldo ingresado no esta disponible en su cuenta' , person[n]. saldo:8:2)
			             
			             else 
			             begin
                           person[n].saldo := person[n].saldo - 10.00;
                           writeln(' El retiro fue exitoso , Su nuevo saldo es' , person[n]. saldo:8:2);
			           end;
			           
			              
			              
			          end;
			          
			        4:     {retiro de 20.00bs}
			         begin
			            if person[n].saldo < 20.00 then 
			              writeln('Fondo insuficiente , el saldo ingresado no esta disponible en su cuenta' , person[n]. saldo:8:2)
			             
			             else 
			             begin
                           person[n].saldo := person[n].saldo - 20.00;
                           writeln(' El retiro fue exitoso , Su nuevo saldo es' , person[n]. saldo:8:2);
			           end;
			           
			              
			              
			          end;
			          
			          5:     {retiro de 50.00bs}
			          begin
			            if person[n].saldo < 50.00 then 
			              writeln('Fondo insuficiente , el saldo ingresado no esta disponible en su cuenta' , person[n]. saldo:8:2)
			             
			             else 
			             begin
                           person[n].saldo := person[n].saldo - 50.00;
                           writeln(' El retiro fue exitoso , Su nuevo saldo es' , person[n]. saldo:8:2);
			           end;
			           
			              
			              
			          end;
			                
				end;
        
                     
                  
   
       end;
       
       
       
       

procedure menu_operaciones;  {operaciones permitas realizar en el cajero automatico}

    begin
      repeat 
         writeln('1.Retirar Dinero');
         writeln('2.Consulta de Saldo');
         writeln('3.Deposito a Cuenta Propia');
         writeln('4.Pagos a Terceros');
         writeln('5.Cerrar Secciones');
         readln(operaciones);
      
      
       case operaciones of   {menu para cada operacion}
       
       '1':   {operacion de retiro}
          
        
          
          begin
             resta(c)
          end;
          
        
       '2':    {operacion de consulta de saldo}
           
           
           begin
           
            estado_cuenta;
            
           end;
       
       '3':  { operacion de depositos}
       
           begin
              suma(c);
           end;
           
       '4':     { operacion de transferencias}
       
          begin
            terceros;
          end;
      
       
     end;
     
      until operaciones = '5'; 
     
    
    
end;



begin   {cuerpo principal}

  bienvenida;
  infor_person;
  menu_operaciones;
  
  
end.

  
    
     
     
     
      
  
