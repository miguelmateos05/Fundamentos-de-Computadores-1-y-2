ENTITY p2_2 IS
  PORT(a0,b0,a1,b1,cin : IN bit; s0,s1,co : INOUT bit);
END p2_2;

ARCHITECTURE estructural OF p2_2 IS

 

  COMPONENT and2 
  PORT(e1, e2 : IN bit; s : OUT bit);
  END COMPONENT;

  COMPONENT or3
  PORT(e1, e2, e3 : IN bit; s : OUT bit);

   
  END COMPONENT;

  COMPONENT xor2 IS
  PORT(e1, e2 : IN bit; s : OUT bit);
  END COMPONENT ;

SIGNAL cs,d1,d2,d3,d4,d5,d6,p1,p2 :bit;

BEGIN
  and21   :and2 PORT MAP(a0, cin, d1);   
  and22   :and2 PORT MAP(a0, b0,d2);
  and23   :and2 PORT MAP(b0, cin,d3 );
  xor21   :xor2 PORT MAP(a0,b0,p1);
  xor22   :xor2 PORT MAP(p1,cin,s0);
  or31    :or3  PORT MAP(d1, d2, d3,cs);
  

 
  and24   :and2 PORT MAP(a1, cs, d4);   
  and25   :and2 PORT MAP(a1, b1,d5);
  and26   :and2 PORT MAP(b1, cs,d6 );
  xor23   :xor2 PORT MAP(a1,b1,p2);
  xor24   :xor2 PORT MAP(p2,cs,s1);
  or32    :or3  PORT MAP(d4, d5, d6,co);
  
  
 
  
END estructural;