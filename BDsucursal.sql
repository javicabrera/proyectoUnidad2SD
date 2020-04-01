PGDMP         	                x        
   BDSucursal    11.3    11.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16952 
   BDSucursal    DATABASE     �   CREATE DATABASE "BDSucursal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE "BDSucursal";
             postgres    false            �            1259    16964    sucursal    TABLE     Y   CREATE TABLE public.sucursal (
    id integer NOT NULL,
    utilidad numeric NOT NULL
);
    DROP TABLE public.sucursal;
       public         postgres    false            �            1259    16972    surtidor    TABLE        CREATE TABLE public.surtidor (
    id integer NOT NULL,
    precio93 integer NOT NULL,
    precio95 integer NOT NULL,
    precio97 integer NOT NULL,
    "precioDiesel" integer NOT NULL,
    "precioKer" integer NOT NULL,
    id_sucursal integer NOT NULL
);
    DROP TABLE public.surtidor;
       public         postgres    false            �            1259    16953    transaccion    TABLE     �   CREATE TABLE public.transaccion (
    id integer NOT NULL,
    id_surtidor integer NOT NULL,
    litros integer NOT NULL,
    tipo text NOT NULL,
    enviado boolean NOT NULL
);
    DROP TABLE public.transaccion;
       public         postgres    false            �            1259    16956    transaccion_id_seq    SEQUENCE     �   ALTER TABLE public.transaccion ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.transaccion_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    196            
          0    16964    sucursal 
   TABLE DATA               0   COPY public.sucursal (id, utilidad) FROM stdin;
    public       postgres    false    198                    0    16972    surtidor 
   TABLE DATA               n   COPY public.surtidor (id, precio93, precio95, precio97, "precioDiesel", "precioKer", id_sucursal) FROM stdin;
    public       postgres    false    199   4                 0    16953    transaccion 
   TABLE DATA               M   COPY public.transaccion (id, id_surtidor, litros, tipo, enviado) FROM stdin;
    public       postgres    false    196   Q                  0    0    transaccion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transaccion_id_seq', 1, false);
            public       postgres    false    197            �
           2606    16976    surtidor id 
   CONSTRAINT     I   ALTER TABLE ONLY public.surtidor
    ADD CONSTRAINT id PRIMARY KEY (id);
 5   ALTER TABLE ONLY public.surtidor DROP CONSTRAINT id;
       public         postgres    false    199            �
           2606    16971    sucursal sucursal_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public         postgres    false    198            �
           2606    16985    transaccion transaccion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.transaccion
    ADD CONSTRAINT transaccion_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.transaccion DROP CONSTRAINT transaccion_pkey;
       public         postgres    false    196            �
           2606    16977    surtidor id_sucursal    FK CONSTRAINT     z   ALTER TABLE ONLY public.surtidor
    ADD CONSTRAINT id_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id);
 >   ALTER TABLE ONLY public.surtidor DROP CONSTRAINT id_sucursal;
       public       postgres    false    199    198    2698            �
           2606    16986    transaccion id_surtidor    FK CONSTRAINT     }   ALTER TABLE ONLY public.transaccion
    ADD CONSTRAINT id_surtidor FOREIGN KEY (id_surtidor) REFERENCES public.surtidor(id);
 A   ALTER TABLE ONLY public.transaccion DROP CONSTRAINT id_surtidor;
       public       postgres    false    196    2700    199            
      x������ � �            x������ � �            x������ � �     