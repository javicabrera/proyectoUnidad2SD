PGDMP                         x        	   BDCentral    11.3    11.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16932 	   BDCentral    DATABASE     �   CREATE DATABASE "BDCentral" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE "BDCentral";
             postgres    false            �            1259    16991    reporte    TABLE     �   CREATE TABLE public.reporte (
    idventa integer NOT NULL,
    idsucursal integer NOT NULL,
    idsurtidor integer NOT NULL,
    litros integer NOT NULL,
    tipo text NOT NULL,
    enviado boolean NOT NULL
);
    DROP TABLE public.reporte;
       public         postgres    false            �
          0    16991    reporte 
   TABLE DATA               Y   COPY public.reporte (idventa, idsucursal, idsurtidor, litros, tipo, enviado) FROM stdin;
    public       postgres    false    196   �       }
           2606    16998    reporte reporte_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT reporte_pkey PRIMARY KEY (idventa);
 >   ALTER TABLE ONLY public.reporte DROP CONSTRAINT reporte_pkey;
       public         postgres    false    196            �
      x������ � �     